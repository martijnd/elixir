defmodule Game do
    def main(args \\ []) do
        IO.puts "X/O Game."
        s = TicTacToe.init

        IO.stream(:stdio, :line)
        |> Enum.reduce(s, &play_line/2)

    end

    def play_line(line, s) do
        line
        |> String.split
        |> Enum.map(&String.to_integer/1)
        |> List.to_tuple
        |> TicTacToe.play(s)
        |> print_board
        |> check_winner
    end

    def check_winner(s) do
        if TicTacToe.game_over?(s) do
            IO.puts("Game Over")
            System.halt
        end
        s
    end

    def print_board(s) do
        for i <- 0..2 do
        for j <- 0..2 do
            " #{Map.get(s.board, {i, j}, ".")} "
        end
        end

        |> Enum.map(&Enum.join/1)
        |> Enum.join("\n")
        |> IO.puts
        s
    end

end