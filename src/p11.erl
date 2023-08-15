-module(p11).

-export([encode_modified/1]).

-import(p05,[reverse/1]).

encode_modified(L) -> encode_modified(L, [],1).

encode_modified([],_,_) -> [];
encode_modified([H], Acc,Count) -> reverse([{Count,H} | Acc]);
encode_modified([H,M],Acc,1)->reverse([M,H|Acc]);
encode_modified([H,H|T],Acc,Count) -> encode_modified([H|T], Acc, Count+1);
encode_modified([H,M|T],Acc,1) -> encode_modified([M|T],[H|Acc],1);
encode_modified([H,M|T],Acc,Count) -> encode_modified([M|T],[{Count,H}|Acc],1).
