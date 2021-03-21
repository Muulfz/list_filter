defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "should return the amount of odd numbers" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response = ListFilter.call(list)

      except_response = 3

      assert response == except_response
    end
  end
end
