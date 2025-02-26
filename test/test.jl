using Graphs
using GraphPlot
using LightGraphs

# Create a graph
g = cycle_graph(5)

# Plot the graph
gplot(g, layout=spring_layout)

g2 = smallgraph(:petersen)
gplot(g2, layout=stressmajorize_layout)

# None of the five layouts are particularly good for the Petersen graph.