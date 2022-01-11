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
