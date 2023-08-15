-module(p01_test).

-include_lib("eunit/include/eunit.hrl").

last_test_()->[
  ?assert(p01:last([1,2,3,4,5,6])=:=6),
  ?assert(p01:last([1])=:=1),
  ?assert(p01:last([])=:=[]),
  ?assert(p01:last(["a",2,"c",3,"b",-5])=:=-5)
].