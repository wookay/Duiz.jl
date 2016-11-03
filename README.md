# Duiz

  [![Travis CI](https://api.travis-ci.org/wookay/Duiz.jl.svg?branch=master)](https://travis-ci.org/wookay/Duiz.jl)
  [![AppVeyor](https://ci.appveyor.com/api/projects/status/8149pgwicks5ssvs?svg=true)](https://ci.appveyor.com/project/wookay/duiz-jl)
  [![Codecov](https://codecov.io/gh/wookay/Duiz.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/wookay/Duiz.jl)
  [![Coveralls](https://coveralls.io/repos/github/wookay/Duiz.jl/badge.svg?branch=master)](https://coveralls.io/github/wookay/Duiz.jl?branch=master)


```julia
julia> using Duiz

julia> Duiz.iter([5 7;6 8])
          e  = [5 7; 6 8]
          1 == start(e)
      false == done(e, 1)
     (5, 2) == next(e, 1)
      false == done(e, 2)
     (6, 3) == next(e, 2)
      false == done(e, 3)
     (7, 4) == next(e, 3)
      false == done(e, 4)
     (8, 5) == next(e, 4)
       true == done(e, 5)
```
