defmodule Problem001 do
  def fizz_buzz_sum([head | tail], acc) do
    if rem(head, 3) == 0 || rem(head, 5) == 0 do
      fizz_buzz_sum(tail, acc + head)
    else
      fizz_buzz_sum(tail, acc)
    end
  end

  def fizz_buzz_sum([], acc) do
    acc
  end
end

list = Enum.to_list 1..999
IO.puts Problem001.fizz_buzz_sum(list, 0)
