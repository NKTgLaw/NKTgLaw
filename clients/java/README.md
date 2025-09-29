# NKTgLaw Java SDK

## Description
Java library for computing momentum and technical interaction forces.

## Usage
```java
double p = NKTgLaw.momentum(m, v);
double NKTg1 = NKTgLaw.nktg1(x, m, v);
double NKTg2 = NKTgLaw.nktg2(dm_dt, m, v);
