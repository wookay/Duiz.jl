# Duiz

  [![Travis CI](https://api.travis-ci.org/wookay/Duiz.jl.svg?branch=master)](https://travis-ci.org/wookay/Duiz.jl)
  [![AppVeyor](https://ci.appveyor.com/api/projects/status/8149pgwicks5ssvs?svg=true)](https://ci.appveyor.com/project/wookay/duiz-jl)
  [![Codecov](https://codecov.io/gh/wookay/Duiz.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/wookay/Duiz.jl)
  [![Coveralls](https://coveralls.io/repos/github/wookay/Duiz.jl/badge.svg?branch=master)](https://coveralls.io/github/wookay/Duiz.jl?branch=master)


```julia
julia> using Duiz

julia> Duiz.iter([(1,2),(5,6)])
          e  = Tuple{Int64,Int64}[(1,2),(5,6)]
          1 == start(e)
      false == done(e, 1)
 ((1,2), 2) == next(e, 1)
      false == done(e, 2)
 ((5,6), 3) == next(e, 2)
       true == done(e, 3)
```
