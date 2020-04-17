using svopt, Test

@test my_fun(2) == 7
@test my_fun(4) == 19
@test my_fun(0) == 3
@test my_fun(10) == 103
