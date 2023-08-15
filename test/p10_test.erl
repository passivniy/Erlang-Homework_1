-module(p10_test).

-include_lib("eunit/include/eunit.hrl").

encode_test_()->[
  p10:encode([a,a,a,a,a,b,c,d,e,e,e])=:=[{5,a},{1,b},{1,c},{1,d},{3,e}],
  p10:encode([a,b,c,d,e])=:=[{1,a},{1,b},{1,c},{1,d},{1,e}],
  p10:encode([])=:=[]
].