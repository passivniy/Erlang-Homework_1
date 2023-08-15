-module(p04_test).

-include_lib("eunit/include/eunit.hrl").

len_test_()->[
  p04:len([1,2,3,4,5,6])=:=6,
  p04:len([1,a,b,c,4,d])=:=6,
  p04:len([a,2,b,c])=:=4,
  p04:len([1,2,3])=:=3,
  p04:len([])=:=0
].