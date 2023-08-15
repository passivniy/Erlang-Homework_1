-module(p10).

-export([encode/1]).

-import(p05,[reverse/1]).

encode(L) -> encode(L,[],1).

encode([],_,_) -> [];
encode([H],Acc,Count) -> reverse([{Count,H} | Acc]);
encode([H,H|T],Acc,Count) -> encode([H|T], Acc, Count+1);
encode([H,M|T],Acc,Count) -> encode([M|T],[{Count, H}|Acc],1).