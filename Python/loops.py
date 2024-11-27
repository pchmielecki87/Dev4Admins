# WHILE
i = 5
while i>=1:
    print(i)
    i -= 1

# FOR
text = 'PythonJestSuper'
j = 0
for i in text:
    print(text[0:j])
    j += 1

for i in text:
    print(text[0:j])
    j -= 1

# RANGE

for i in range(1,10):
    print('Zakres ' + str(i))

# Przykład instrukcji continue
for i in range(1, 11):
    if i % 2 == 0:
        continue  # Przeskakuje do kolejnej iteracji, jeśli liczba jest parzysta
    print(i)

# Przykład instrukcji break
num_to_find = 7
for i in range(1, 11):
    if i == num_to_find:
        print("Liczba", num_to_find, "znaleziona!")
        break  # Przerywa pętlę, gdy liczba zostanie znaleziona
    print("Szukam liczby", i)