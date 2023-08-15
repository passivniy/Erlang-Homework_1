-module(p07).

-export([flatten/1]).

-import(p05,[reverse/1]).

flatten(L) -> reverse(flatten(L, [])).

flatten([],L) -> L;
flatten([[]|T],L) -> flatten(T,L);
flatten([[H|InnerT]|T],L) -> flatten([InnerT|T],flatten([H|T],L));
flatten([H|T],L) -> flatten(T,[H|L]).