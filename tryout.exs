defmodule M do
    def main do
        list = Enum.reduce([1,2,3], fn(n, sum) -> n + sum end)
    end
end

