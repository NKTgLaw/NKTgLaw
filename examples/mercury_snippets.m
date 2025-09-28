% Mercury: logic/functional language for reliability
:- module nktg.
:- interface.
:- import_module io.
:- pred main(io::di, io::uo) is det.

:- implementation.
:- import_module float.

main(!IO) :-
    X = 2.0, V = 3.0, M = 5.0, DM_DT = 0.1,
    P = M * V,
    NKTg1 = X * P,
    NKTg2 = DM_DT * P,
    io.format("p=%.2f NKTg1=%.2f NKTg2=%.2f\n", [f(P), f(NKTg1), f(NKTg2)], !IO).
