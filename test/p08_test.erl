-module(p08_test).

-include_lib("eunit/include/eunit.hrl").

compress_test_()->[
  compress([1,1,2,2,3,4,5,6])=:=[1,2,3,4,5,6],
  compress([1,1,1,1,1,2,3,7,8])=:=[1,2,3,7,8],
  compress([1,2,3,4,5])=:=[1,2,3,4,5],
  compress([])=:=[]
].