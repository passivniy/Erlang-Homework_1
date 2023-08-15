-module(p14_test).

-include_lib("eunit/include/eunit.hrl").

duplicate_test_()->[
  p14:duplicate([a,b,c,d])=:=[a,a,b,b,c,c,d,d],
  p14:duplicate([a])=:=[a,a],
  p14:duplicate([])=:=[]
].