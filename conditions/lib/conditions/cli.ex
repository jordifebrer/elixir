defmodule Conditions.CLI do

  @icao_regex_format ~r/^[A-Z]{4}$/

  @moduledoc """
  TO DO
  """

  def main(argv) do
    argv
      |> parse_args
      |> process
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [ help: :boolean ],
                                     aliases:  [ h:    :help    ])
    case parse do
      { [ help: true ], _, _ } -> :help
      { _, [ icao ], _ } when is_binary(icao) ->
                           if is_icao(icao), do: { icao }, else: :help
      _ -> :help
    end
  end

  def process(:help) do
    IO.puts """
    usage: conditions <ICAO>
    """
    System.halt(0)
  end

  def process({icao}) do
    IO.puts "TO DO process.."
    System.halt(0)
  end

  defp is_icao(str), do: Regex.match?(@icao_regex_format, str)
end
