-module(p15_test).

-include_lib("eunit/include/eunit.hrl").

replicate_test_()->[
  p15:replicate([a,b,c,d],3)=:=[a,a,a,b,b,b,c,c,c,d,d,d],
  p15:replicate([1],6)=:=[1,1,1,1,1,1],
  p15:replicate([],5)=:=[]
].