using MyFirstPackage
using Documenter

DocMeta.setdocmeta!(MyFirstPackage, :DocTestSetup, :(using MyFirstPackage); recursive=true)

makedocs(;
    modules=[MyFirstPackage],
    authors="zhaohui zhi",
    sitename="MyFirstPackage.jl",
    format=Documenter.HTML(;
        canonical="https://zzh-cycling.github.io/MyFirstPackage.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/zzh-cycling/MyFirstPackage.jl",
    devbranch="main",
)
