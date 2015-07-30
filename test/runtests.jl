using Base.Test
using DSGE

include("util.jl")

my_tests = [
            "core",
            "models/m990/m990",
            #"solve/gensys", (currently using Matlab gensys instead)
            "solve/solve",
            "solve/ordered_qz",
            "estimate/kalman",
            "estimate/posterior",
            #"estimate/hessian" (currently takes 6 hours to complete)
            ]

for test in my_tests
    test_file = string("$test.jl")
    @printf " * %s\n" test_file
    include(test_file)
end