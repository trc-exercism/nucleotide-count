defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a NucleotideCount strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    _count(strand, nucleotide, 0)
  end

  defp _count([], nucleotide, acc), do: acc
  defp _count([h|t], nucleotide, acc) when h == nucleotide, do: _count(t, nucleotide, acc+1)
  defp _count([h|t], nucleotide, acc) when h !== nucleotide, do: _count(t, nucleotide, acc)

  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand) do

  end
end
