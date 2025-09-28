% Prolog: logic programming, often used in AI and rule-based systems
calculate :-
    X = 2.0, V = 3.0, M = 5.0, DM_DT = 0.1,
    P is M * V,
    NKTg1 is X * P,
    NKTg2 is DM_DT * P,
    format('p=~w NKTg1=~w NKTg2=~w~n', [P, NKTg1, NKTg2]).
