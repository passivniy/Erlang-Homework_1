-module(p06_test).

-include_lib("eunit/include/eunit.hrl").

is_palindrome_test_()->[
  p06:is_palindrome([1,2,3,2,1])=:=true,
  p06:is_palindrome([1])=:=true,
  p06:is_palindrome([])=:=true,
  p06:is_palindrome([1,2,3,4,2])=:=false
].