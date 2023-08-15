-module(p11_test).

-include_lib("eunit/include/eunit.hrl").

encode_modified_test_()->[
  p11:encode_modified([a,a,a,b,c,d,e,r,r,r])=:=[{3,a},b,c,d,e,{3,r}],
  p11:encode_modified([a,b,c,d,e])=:=[a,b,c,d,e],
  p11:encode_modified([])=:=[]
].