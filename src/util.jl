# module Duiz

settings = Dict{Symbol,Any}(
    :output => println
)

function set_output(f::Function)
    settings[:output] = f
end

function with_color(name::Symbol, text)::String
    string(Base.text_colors[name], text, Base.color_normal)
end
