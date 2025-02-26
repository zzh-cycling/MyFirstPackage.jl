
using TropicalNumbers, Graphs, LinearAlgebra

function shortest_path(G::SimpleGraph)
    A = adjacency_matrix(G)
    n = nv(G)
    A_tropical = map(x -> iszero(x) ? zero(TropicalMinPlus{Float64}) : TropicalMinPlus(1.0), A)

    A_tropical = A_tropical + Diagonal(fill(TropicalMinPlus(0.0), n))
    Path = A_tropical^n

    return Path
end

Base.:(==)(a::TropicalMinPlus, b::T) where {T <: Real} = (a.n == b)
