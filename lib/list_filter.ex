defmodule ListFilter do
  def call(list), do: filter(list)

  defp filter(list) do
    numberList =
      Enum.flat_map(list, fn string ->
        case Integer.parse(string) do
          {int, _rest} -> [int]
          :error -> []
        end
      end)

    itens = Enum.filter(numberList, fn element -> rem(element, 2) != 0 end)
    length(itens)
  end
end
