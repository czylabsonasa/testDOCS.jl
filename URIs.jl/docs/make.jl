#push!(LOAD_PATH,"../src/")

using Documenter

import Pkg
Pkg.develop("URIs")

makedocs(            ;
    remotes = nothing, 
    source = "src",
    modules=[URIs],
    #format=Documenter.HTML(),
	  format = Documenter.HTML(
      #repolink = "https://github.com/JuliaWeb/URIs.jl", # nothing,
      repolink = "../URIs.SRC",
	    prettyurls = false, 
	    assets = ["assets/custom.css"], 
	  ),
    sitename="URIs.jl",
    pages=[
        "Home" => "index.md",
    ],
    #repo="https://github.com/JuliaWeb/URIs.jl/blob/{commit}{path}#L{line}",
    #remotes="..",
    doctest = false,
    clean = true,
    authors = "Jacob Quinn, Sam O'Connor and contributors: https://github.com/JuliaWeb/URIs.jl/graphs/contributors"
)

# deploydocs(;
    # repo="github.com/JuliaWeb/URIs.jl",
    # push_preview=true
# )
