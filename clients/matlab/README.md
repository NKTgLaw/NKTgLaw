# NKTgLaw MATLAB SDK

## Description
A MATLAB library for computing momentum and technical interaction forces based on the NKTg Law of Varying Inertia.

## Installation
Run `setup.m` or manually add the `nktg_law` folder to your MATLAB path:
```matlab
addpath('nktg_law');
Usage
Matlab
% Example parameters: x=2.0, v=3.0, m=5.0, dm_dt=0.1
[p, NKTg1, NKTg2] = nktgLaw(2.0, 3.0, 5.0, 0.1);

% Results based on Product Logic:
% p = 15.0
% NKTg1 = 30.0
% NKTg2 = 1.5
Testing
To run the automated tests, use the following command in the MATLAB Command Window:

Matlab
results = runtests('tests/test_nktgLaw.m');
