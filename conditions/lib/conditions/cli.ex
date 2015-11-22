defmodule Conditions.CLI do

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
      { _, [ icao ], _ } -> { icao }
      _ -> :help
    end
  end

  def process(:help) do
    IO.puts """
    usage: conditions <ICAO>
    """
    System.halt(0)
  end

  defmacro is_new_user(phone) do
    quote do: unquote(phone) != "123"
  end

  def process({icao}) do
    IO.puts "TO DO process.."
    System.halt(0)
  end
end
