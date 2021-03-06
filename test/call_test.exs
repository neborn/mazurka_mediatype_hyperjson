defmodule HyperjsonTest.Call do
  use HyperjsonTestHelper

  parsetest "should call a global function", """
  bar(1,2,3)
  """, [1,2,3]

  parsetest "should call a namespaced function", """
  foo:bar(1,2,3)
  """, [1,2,3]

  parsetest "should call nested functions", """
  first(1 second(2 fourth(4) fifth(5)) third(3 sixth(6) seventh(7)))
  """, [1, [2, [4], [5]], [3, [6], [7]]]
end