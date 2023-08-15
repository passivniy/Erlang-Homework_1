-module(p07_test).

-include_lib("eunit/include/eunit.hrl").

flatten_test_()->[
  p07:flatten([[1,1,[1,[2]],3,4,[4],[5,6,6]]])=:=[1,1,1,2,3,4,4,5,6,6],
  p07:flatten([[[[[1]]]]])=:=[1],
  p07:flatten([])=:=[]
].