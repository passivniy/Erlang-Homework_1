-module(p02_test).

-include_lib("eunit/include/eunit.hrl").

but_last_test_()->[
  ?assert(p02:but_last([1,2,3,4,5,6])=:=[5,6]),
  ?assert(p02:but_last([a,b,c,d,e,f,g])=:=[f,g]),
  ?assert(p02:but_last([1])=:=undefined),
  ?assert(p02:but_last([])=:=[])
].