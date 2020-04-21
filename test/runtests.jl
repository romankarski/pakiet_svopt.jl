using svopt, Test

@testset "NR_testing" begin
	f, fp, x = x -> x^3 - 5x + 1, x -> 3x^2 - 5, 0
	@test NR_fun(f, fp, x) == (0.20163967572339103, 3)
	
	f, fp, x = x -> x^2 + x + 1, x -> 2x + 1, 0
	@test NR_fun(f, fp, x) == (-1.0, 1)
end
