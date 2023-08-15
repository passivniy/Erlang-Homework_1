-module(p02).

-export([but_last/1]).

but_last([])->[];
but_last([_])->undefined;
but_last([_, _] = X) -> X;
but_last([_|T]) -> but_last(T).
