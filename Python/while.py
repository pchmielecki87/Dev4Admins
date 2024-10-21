print("zad 1")
print(4/2-2**1)
print(4/2+2**1)
print(1//2+3*4)
print(1**2-4//3)


# print("zad 2")
# power = 1
# while power != 10:
#     power *= 2
#     if power == 5:
#         continue
#     print("@", end="")
# else:
#     print("@")
# ENDLESS LOOP


print("zad 3")
others = -1
for i in range(1,3):
    for j in range(1,2):
        if i == j:
            others += 1
    else:
        others += 1
print(others)


print("zad 4")
planets = 1+1//2*3
if planets > 0:
    print("#")
elif planets > 1:
    print("##")
else:
    print("###")


print("zad 5")
torque = 1
while torque < 2:
    torque *= 2
    print("*", end="")
else:
    print("*")
