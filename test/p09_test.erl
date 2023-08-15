-module(p09_test).

-include_lib("eunit/include/eunit.hrl").

pack_test_()->[
  p09:pack([a,a,a,a,a,c,b,c,a,d])=:=[[a,a,a,a,a],[c],[b],[c],[a],[d]],
  p09:pack([a,b,c,d,e])=:=[[a],[b],[c],[d],[e]],
  p09:pack([])=:=[]
].