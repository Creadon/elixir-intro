defmodule Intro do

  def smallest(n1, n2) when n1 < n2, do: n1
  def smallest(_n1, n2), do: n2

  def smallest(n1, n2, n3, n4), do: smallest(smallest(n1, n2), smallest(n3, n4))

  def largest(n1, n2) when n1 > n2, do: n1
  def largest(_n1, n2), do: n2

  def largest(n1, n2, n3), do: largest(largest(n1, n2), n3)

  def price(age) when age < 18, do: 10
  def price(age) when age <= 64, do: 20
  def price(_age), do: 15

  def next(input), do: input + 1

  def factorial(0), do: 1
  def factorial(input) when input > 0, do: input * factorial(input - 1)

  def fibonacci(0), do: 0
  def fibonacci(1), do: 1
  def fibonacci(input), do: fibonacci(input - 1) + fibonacci(input - 2)

  def empty(list), do: length(list) == 0

  def first([head | _tail]), do: head

  def last([head | tail]) when tail === [], do: head
  def last([_head | tail]), do: last(tail)

  def prepend(input, list), do: [input | list]

  # fungerande funktion
  #def append(list, input), do: list ++ [input]

  # todo: fixa skiten
  def append(list, input), do: [list | [input]]

  def listLength([]), do: 0
  def listLength([_head | tail]), do: 1 + listLength(tail)

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def average([]), do: 0
  def average(list), do: sum(list) / listLength(list)

  def concat([], []), do: []
  def concat(list1, []), do: list1
  def concat([], list2), do: list2
  def concat(list1, [head | tail]), do: concat(append(list1, head), tail)
end
