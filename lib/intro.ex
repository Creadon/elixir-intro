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

  def first([]), do: []
  def first([head | _tail]), do: head

  def last([]), do: []
  def last([head | tail]) when tail === [], do: head
  def last([_head | tail]), do: last(tail)

  def prepend(input, list), do: [input | list]

  def append([], input), do: [input]
  def append([head | tail], input), do: [head | append(tail, input)]

  def listLength([]), do: 0
  def listLength([_head | tail]), do: listLength(tail) + 1

  def sum([]), do: 0
  def sum([head | tail]), do: head + sum(tail)

  def average([]), do: 0
  def average(list), do: sum(list) / listLength(list)

  def concat([], []), do: []
  def concat(list1, []), do: list1
  def concat([], list2), do: list2
  def concat(list1, [head | tail]), do: concat(append(list1, head), tail)

  def startsWith(first, text), do: first === hd String.graphemes(text)

  def endsWith(last, text), do: last == last(String.graphemes(text))

  def chomp(text) do
    cond do
      endsWith("\n", text) == true -> removeLast(text)
      true -> text
    end
  end

  def removeLast(input, acc \\ 0)
  def removeLast(input, _acc), do: removeLast(String.graphemes(input), [], listLength(String.graphemes(input)) - 1)
  def removeLast(_list, text, acc) when acc == 0, do: List.to_string(text)
  def removeLast([head | tail], text, acc) when acc > 0, do: removeLast(tail, append(text, head), acc - 1)
end
