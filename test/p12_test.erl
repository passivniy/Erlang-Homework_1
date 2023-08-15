-module(p12_test).

-include_lib("eunit/include/eunit.hrl").

decode_modified_test_()->[
  p12:decode_modified([{1,a},{5,b},{3,c},d])=:=[a,b,b,b,b,b,c,c,c,d],
  p12:decode_modified([])=:=[],
  p12:decode_modified([{1,a},b])=:=[a,b]
].