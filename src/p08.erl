-module(p08).

-export([compress/1]).

-import(p05,[reverse/1]).

compress(L)->compress(L,[]).

compress([],_)-> [];
compress([H],L)->reverse([H|L]);
compress([H,H|T],L) ->
  compress([H|T],L);
compress([H,M|T],L) ->
  compress([M|T],[H|L]).