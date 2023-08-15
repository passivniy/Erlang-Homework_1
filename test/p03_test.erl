-module(p03_test).

-include_lib("eunit/include/eunit.hrl").

element_at_test_()->[
  (p03:element_at([1,2,3,4,5,6],5)=:=5),
  (p03:element_at([1],1)=:=1),
  (p03:element_at([1,2,3],2)=:=2),
  (p03:element_at([],1)=:=undefined)
].