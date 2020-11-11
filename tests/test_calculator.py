"""
Unit tests for the operations library
"""

import operations


class Testoperations:
    def test_addition(self):
        assert 4 == operations.add(2, 2)

    def test_subtraction(self):
        assert 2 == operations.subtract(4, 2)

    def test_multiplication(self):
        assert 100 == operations.multiply(10, 10)

    def test_division(self):
        assert 1 == operations.divide(10, 10)
