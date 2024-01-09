using EarthBalanceModels
using Documenter

DocMeta.setdocmeta!(EarthBalanceModels, :DocTestSetup, :(using EarthBalanceModels); recursive=true)

makedocs(;
    modules=[EarthBalanceModels],
    authors="Natan Dominko Kobilica",
    repo="https://github.com/dknatan/EarthBalanceModels.jl/blob/{commit}{path}#{line}",
    sitename="EarthBalanceModels.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)
