from setuptools import setup, find_packages

setup(
    name="nktg-law",
    version="1.0.0",
    description="Python SDK for NKTg Law (Varying Inertia Model)",
    author="Nguyễn Khánh Tùng",
    author_email="traiphieu.com@gmail.com",
    packages=find_packages(),
    install_requires=[
        "requests>=2.25.0",
    ],
    python_requires=">=3.7",
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: GNU General Public License v3 (GPLv3)",
        "Operating System :: OS Independent",
    ],
)
