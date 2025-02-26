using MyFirstPackage
using Test
using Graphs

@testset "shortest_path" begin
    g = smallgraph(:petersen)
    Path = shortest_path(g)
    Path_test = hcat([dijkstra_shortest_paths(g, i).dists for i in vertices(g)]...)
    @test Path == Path_test
end
