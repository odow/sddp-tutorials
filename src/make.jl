# This script rebuilds the notebooks.

using Literate

for file in readdir(@__DIR__)
    if file == "make.jl" || !endswith(file, ".jl")
        continue
    end
    Literate.notebook(
        joinpath(@__DIR__, file),
        dirname(@__DIR__);
        execute = false,
    )
end
