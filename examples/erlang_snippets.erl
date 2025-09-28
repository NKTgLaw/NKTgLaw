%% Erlang: concurrency-focused language for telecom systems
-module(nktg_law).
-export([calculate/0]).

calculate() ->
    X = 2.0, V = 3.0, M = 5.0, DM_DT = 0.1,
    P = M * V,
    NKTg1 = X * P,
    NKTg2 = DM_DT * P,
    io:format("p=~p NKTg1=~p NKTg2=~p~n", [P, NKTg1, NKTg2]).
