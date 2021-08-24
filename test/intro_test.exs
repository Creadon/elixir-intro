defmodule IntroTest do
  use ExUnit.Case

  test "smallest of two when smallest is first" do
    assert Intro.smallest(1,2) == 1
  end

  test "smallest of two when smallest is last" do
    assert Intro.smallest(3,2) == 2
  end

  test "smallest of two of equal size" do
    assert Intro.smallest(1337,1337) == 1337
  end

  test "Largest of three when largest is first" do
    assert Intro.largest(1337, 0, 2) == 1337
  end

  test "Largest of three where two are equally large" do
    assert Intro.largest(1337, 1337, 2) == 1337
  end

  test "Smallest of four where smallest is first" do
    assert Intro.smallest(2, 123, 43, 54) == 2
  end

  test "Smallest of four where two are equally small" do
    assert Intro.smallest(2, 123, 2, 54) == 2
  end

  test "Price for age 16" do
    assert Intro.price(16) == 10
  end

  test "Price for age 30" do
    assert Intro.price(30) == 20
  end

  test "Price for age 70" do
    assert Intro.price(70) == 15
  end

  test "When input is 16 expect 17" do
    assert Intro.next(16) == 17
  end

  test "When input is 0 expect 1" do
    assert Intro.factorial(0) == 1
  end

  test "When input is 3 expect 6" do
    assert Intro.factorial(3) == 6
  end

  # Counting from 0
  test "When fibonacci input is 0 expect 0" do
    assert Intro.fibonacci(0) == 0
  end

  test "When fibonacci input is 1 expect 1" do
    assert Intro.fibonacci(1) == 1
  end

  test "When fibonacci input is 5 expect 5" do
    assert Intro.fibonacci(5) == 5
  end

  test "When list is empty expect true" do
    assert Intro.empty([]) == true
  end

  test "When list isn't empty expect false" do
    assert Intro.empty([0]) == false
  end

  test "Expect first list item" do
    assert Intro.first([0, 1, 2, 3]) == 0
  end
end
