defmodule IntroTest do
  use ExUnit.Case

  test "Largest" do
    assert Intro.largest(1337, 0, 2) == 1337
    assert Intro.largest(1337, 1337, 2) == 1337
  end

  test "Smallest" do
    assert Intro.smallest(2, 123, 43, 54) == 2
    assert Intro.smallest(2, 123, 2, 54) == 2
    assert Intro.smallest(1337,1337) == 1337
    assert Intro.smallest(3,2) == 2
  end

  test "Price" do
    assert Intro.price(16) == 10
    assert Intro.price(30) == 20
    assert Intro.price(70) == 15
  end

  test "Next" do
    assert Intro.next(16) == 17
  end

  test "Factorial" do
    assert Intro.factorial(0) == 1
    assert Intro.factorial(3) == 6
  end

  # Counting from 0
  test "Fibonacci" do
    assert Intro.fibonacci(0) == 0
    assert Intro.fibonacci(1) == 1
    assert Intro.fibonacci(5) == 5
  end

  test "Empty" do
    assert Intro.empty([]) == true
    assert Intro.empty([0]) == false
  end

  test "First" do
    assert Intro.first([0, 1, 2, 3]) == 0
  end

  test "Last" do
    assert Intro.last([0, 123, "abc"]) == "abc"
  end

  test "Prepend" do
    assert Intro.prepend(0, [123, "abc"]) == [0, 123, "abc"]
  end

  test "Append" do
    assert Intro.append([123, "abc"], 0) == [123, "abc", 0]
  end

  test "Length" do
    assert Intro.listLength([0, 0, 0]) == 3
  end

  test "Sum" do
    assert Intro.sum([4, 4, 2]) == 10
  end

  test "Average" do
    assert Intro.average([8, 12, 14, 6]) == 10
  end

  test "Concat" do
    assert Intro.concat([1, 2], [3, 4]) == [1, 2, 3, 4]
  end

  test "StartsWith" do
    assert Intro.startsWith("t", "test") == true
    assert Intro.startsWith("t", "abc") == false
  end

  test "EndsWith" do
    assert Intro.endsWith("t", "test") == true
    assert Intro.endsWith("t", "abc") == false
  end

  test "Chomp" do
    assert Intro.chomp("test\n") == "test"
  end

end
