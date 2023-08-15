-module(p14).

-export([duplicate/1]).

-import(p05,[reverse/1]).

duplicate(Acc) -> duplicate(Acc, []).

duplicate([], Acc) -> reverse(Acc);
duplicate([H|T], Acc) -> duplicate(T, [H, H | Acc]).