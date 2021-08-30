defmodule ListFilter do
  def call(list) do
    Enum.count(list_int(list), fn x -> rem(x, 2) != 0 end)
  end

  def list_int(lista) do
    Enum.flat_map(lista, fn lista ->
      case Integer.parse(lista) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
  end
end
