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
end
