-module(p05_test).

-include_lib("eunit/include/eunit.hrl").

reverse_test_()->[
  p05:reverse([1,2,3,4,5,6])=:=[6,5,4,3,2,1],
  p05:reverse([1,2])=:=[2,1],
  p05:reverse([])=:=[],
  p05:reverse([1])=:=[1]
].