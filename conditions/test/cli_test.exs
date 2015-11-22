defmodule CliTest do
	use ExUnit.Case

	import Conditions.CLI, only: [ parse_args: 1 ]

	test ":help returned by option parsing with -h and --help options" do
		assert parse_args(["-h",     "anything"]) == :help
    assert parse_args(["--help", "anything"]) == :help
	end

	test "help returned when value is not ICAO format" do
		assert parse_args(["PHK"]) == :help
		assert parse_args(["PHK0"]) == :help
	end

	test "one value returned if one value given with ICAO format" do
		assert parse_args(["PHKO"]) == { "PHKO" }
	end
end
