def recurse_function():
    print('I\'m function')
    print('I\'m still function')
    recurse_function()

# recurse_function()


def manipulate_text():
    text = "Jan z Krakowa"
    print(f"Oryginal: {text}")
    print(f"Upper: {text.upper()}")
    print(f"Lower: {text.lower()}")    
    
manipulate_text()