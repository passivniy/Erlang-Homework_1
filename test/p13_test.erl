-module(p13_test).

-include_lib("eunit/include/eunit.hrl").

decode_modified_test_()->[
  p13:decode_modified([{1,a},{5,b},{3,c}])=:=[a,b,b,b,b,b,c,c,c],
  p13:decode_modified([])=:=[],
  p13:decode_modified([{1,a}])=:=[a]
].