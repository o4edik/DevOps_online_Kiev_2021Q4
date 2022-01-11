### Module Python Essentials


##### Quadratic equiation
```
import math 


# Решаем квадратное уравнение вида 𝑎𝑥 + 𝑏𝑥 + 𝑐 = 0 через дискриминант (d)")
# Формула дискриминанта: d = b**2 - 4ac.Используя эту формулу мы можем вывести решение.
# Если дискриминант больше или равен нулю, то корни уравнения высчитываются по формуле: x1,2 = (-b ± √D) ÷ (2a)
# Если же дискриминант меньше нуля, то уравнение не имеет решений.")

#a,b,c = input ("Enter the coefficients of a, b, c separated by commas: ")

def validate_param():
    numb_of_attempts = 3
    while numb_of_attempts > 0:
        try:
           a=int(input("enter val a:"))
           b=int(input("enter val b:"))
           c=int(input("enter val c:"))
        except TypeError:
            print("Type is not integer")  
            numb_of_attempts -= 1
            continue
        else:
            return a, b, c         

def discriminant(a, b, c):
    d = b**2 - 4*a*c
    return d

def roots(d, a, b, c):
    if d > 0:
        x1 = (-b + math.sqrt(d)) / (2 * a)
        x2 = (-b - math.sqrt(d)) / (2 * a)
        print("x1 = %.2f \nx2 = %.2f" % (x1, x2))
        return x1, x2
    elif d == 0:
        x = -b / (2 * a)
        print("x = %.2f" % x)
        return x
    else:
        print("Equation have no roots")
        
def solv_square(a, b, c) -> roots:
    d = discriminant(a, b, c)
    roots(d, a, b, c)
    print("Discriminant =", d)


def square_print(a, b, c, roots):
    print("a =", a)
    print("b =", b)
    print("c =", c)
    roots


def main():
    print("Please enter values for equation:")
    valid_params = validate_param()
    a = valid_params[0]
    b = valid_params[1]
    c = valid_params[2]
    solv_square(a, b, c)
    square_print(a, b, c, roots)

    #square_print(a, b, c, roots)


if __name__ == "__main__":
    main()    
```

##### Unittest of the quadratic equiation

```
from typing import Any
import unittest
import solv_square_equation

class solv_square(unittest.TestCase):
    # Returns True if entered value is int
    def test_validate_param(self):
        self.assertTrue(solv_square_equation.validate_param(), int )

    # Returns True if the equiation is quadratic
    def test_discriminant(self):
        self.assertEqual(solv_square_equation.discriminant(4, 5, 9), -119)

if __name__ == '__main__':
    unittest.main()
```

