#PS v5.1

$global:fileslocation = "C:\App_data"
    if (!(Test-Path -Path $fileslocation)){
        New-Item -ItemType directory -Path $fileslocation
        }
$source_path_db = "C:\Backup" #C:\Backup?
$global:backup_path_db = "$fileslocation\db_archive"
    if (!(Test-Path -Path $backup_path_db)){
            New-Item -ItemType directory -Path $backup_path_db
            }
$global:date = Get-Date –f "yyyy-MM-dd HH-mm-ss" 
$global:computer = $env:computername
$global:Curr_date = Get-Date (Get-Date -Format d)
$global:limit = (Get-Date).AddDays(-90) #90 days for zipped files
$global:limit1 = (Get-Date).AddDays(-2) #2 days not-zipped backup

###############################################################
################## 0a logging every step ######################
###############################################################

$global:logfile = New-Item -ItemType file "$fileslocation\DB maintenace $computer $date.log"

    function log($string, $color){
        if ($Color -eq $null) {$color = "white"}
            write-host $string -foregroundcolor $color
            $string | out-file -Filepath $logfile -append
        }

###############################################################
################## 0b PS execution policy #####################
###############################################################

log "$(Get-Date)-----Checking ExecutionPolicy"
$execpolicy = Get-ExecutionPolicy

    if ($execpolicy -ne "Unrestricted") {
        log "$(Get-Date)-----ExecutionPolicy is default set as $execpolicy"
            Set-ExecutionPolicy Unrestricted -Force
        log "$(Get-Date)-----Now ExecutionPolicy is set as $execpolicy"
    } else {
        log "$(Get-Date)-----ExecutionPolicy is already set as $execpolicy"
    }

###############################################################
################# 0c Install 7-zip module #####################
###############################################################

$check = Get-InstalledModule -Name "7Zip4PowerShell"
if($check){
    log "$(Get-Date)-----7Zip4PowerShell module was already installed"
    } else {
    log "$(Get-Date)-----Install 7Zip4PowerShell module" Red
        Install-Module -Name 7Zip4PowerShell -Force
    log "$(Get-Date)-----7Zip4PowerShell module was installed successfully" Green
    }

###############################################################
################### 1a DB backups zipping #####################
###############################################################

log "$(Get-Date)-----Zipping DB backup files"
    Foreach($file in (Get-ChildItem $source_path_db)) {
        #only from today!
        if($file.LastWriteTime -gt $Curr_date) {
            #list zipped files
            log "$(Get-Date)-----List of zipped files: $file"
                Compress-7Zip -Path $source_path_db\$file -ArchiveFileName $backup_path_db\$file.zip -Format Zip
        }
    }

###############################################################
################### 1b DB backup cleaning #####################
###############################################################

log "$(Get-Date)-----Remove older than $limit1 days DB backup files"
    Get-ChildItem $source_path_db -include *.bak -Recurse | Where CreationTime -lt  $limit1 | Remove-Item -Force
log "$(Get-Date)-----Remove older than $limit days zipped DB backup files"
    Get-ChildItem $backup_path_db -include *.zip -Recurse | Where CreationTime -lt  $limit | Remove-Item -Force
