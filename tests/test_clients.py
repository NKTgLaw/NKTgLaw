# 🧪 NKTgLaw Unified Client Test Suite

import unittest
import subprocess
import os

class TestPythonClient(unittest.TestCase):
    def test_python_output(self):
        """Test output from Python client"""
        result = subprocess.run(
            ["python3", "clients/python/NKTgLaw.py"],
            capture_output=True, text=True
        )
        output = result.stdout.strip()
        self.assertIn("p = 15.0", output)
        self.assertIn("NKTg1 = 30.0", output)
        self.assertIn("NKTg2 = 1.5", output)

class TestCppClient(unittest.TestCase):
    def test_cpp_output(self):
        """Test output from C++ client"""
        subprocess.run(
            ["g++", "clients/cpp/NKTgLaw.cpp", "-o", "nktg_cpp"],
            check=True
        )
        result = subprocess.run(
            ["./nktg_cpp"],
            capture_output=True, text=True
        )
        output = result.stdout.strip()
        self.assertIn("p = 15", output)
        self.assertIn("NKTg1 = 30", output)
        self.assertIn("NKTg2 = 1.5", output)

# Optional: Add more clients here
# class TestRustClient(unittest.TestCase):
#     ...

if __name__ == "__main__":
    unittest.main()

