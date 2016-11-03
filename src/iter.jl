# module Duiz

function iter(e)::Union{Void,String}
    iter_trace(e, settings[:output])
end

function iter_trace(g::Base.Generator, output::Function)::Union{Void,String}
    iter_trace(g.iter, output)
end

function iter_trace(e, output::Function)::Union{Void,String}
    out = String[]
    function proc(x)
        if string == output
            push!(out, x)
        else
            println(x)
        end
    end
    padding = 11 
    proc(string(lpad("e", padding), "  = $e"))
    state = start(e)
    proc(string(lpad(state, padding), " == start(e)"))
    while true
        fin = done(e, state)
        proc(string(lpad(fin, padding) , " == $done(e, $state)"))
        fin && break
        (value, next_state) = next(e, state)
        val = string == output ? value : with_color(:green, value)
        proc(string(repeat(" ", max(0, padding - length(string(value,next_state)) - 4)),
            "(", val, ", $next_state) == next(e, $state)"))
        state = next_state
    end
    if string == output
        string(join(out, "\n"), "\n")
    else
        nothing
    end
end
