leaf = fn x, y, space ->
	Enum.join(Enum.map(x..y, fn i -> String.duplicate(" ", space-i) <> String.duplicate("*", (2*i)-1) end), "\n") <> "\n"
end

stem = fn x, y, space ->
	String.duplicate(String.duplicate(" ", space-div(x, 2)) <> String.duplicate("|", x) <> "\n", y)
end

tree = fn (n) ->
	leaf.(1, 3*div(n, 4), 2*n) <>
	leaf.(div(n, 2), n, 2*n) <>
	leaf.(4*div(n, 5), n+div(n, 2), 2*n) <>
	stem.(div(n, 4)+rem(n, 2)+1, div(n, 2), 2*n-1)
end

IO.puts tree.(System.argv |> hd |> Integer.parse |> Tuple.to_list |> hd)
