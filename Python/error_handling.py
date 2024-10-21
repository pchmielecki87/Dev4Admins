def divide_numbers(a, b):
    try:
        result = a / b
    except ZeroDivisionError:
        print("Error: Cannot divide by zero!")
        return None
    else:
        return result
    finally:
        print("Division attempt completed.")

# Get input from the user
try:
    num1 = float(input("Enter the first number: "))
    num2 = float(input("Enter the second number: "))
except ValueError:
    print("Invalid input! Please enter valid numbers.")
else:
    # Perform division with protection
    result = divide_numbers(num1, num2)
    if result is not None:
        print(f"Result: {result}")
