module MeshTools
using PlyIO
using LinearAlgebra
using SparseArrays

vdot(x,y; dims=1) = sum(x .* y, dims=dims)
multicross(x,y) = reduce(hcat, cross.(eachcol(x), eachcol(y)))

include("mesh.jl")
include("geom.jl")
include("laplacian/laplacian.jl")
include("operators.jl")
include("vectorfield.jl")
include("read.jl")

export Mesh, cot_laplacian

end # module MeshTools
