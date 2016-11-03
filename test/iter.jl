using Base.Test
using Duiz

Duiz.set_output(string)

@test Duiz.iter([(1,2),(5,6)]) == """
          e  = Tuple{Int64,Int64}[(1,2),(5,6)]
          1 == start(e)
      false == done(e, 1)
 ((1,2), 2) == next(e, 1)
      false == done(e, 2)
 ((5,6), 3) == next(e, 2)
       true == done(e, 3)
"""

@test Duiz.iter(([1,2],[5,6])) == """
          e  = ([1,2],[5,6])
          1 == start(e)
      false == done(e, 1)
 ([1,2], 2) == next(e, 1)
      false == done(e, 2)
 ([5,6], 3) == next(e, 2)
       true == done(e, 3)
"""

@test Duiz.iter(Dict(:a=>5,:b=>6,:c=>7)) == """
          e  = Dict(:c=>7,:a=>5,:b=>6)
          1 == start(e)
      false == done(e, 1)
(:c=>7, 10) == next(e, 1)
      false == done(e, 10)
(:a=>5, 11) == next(e, 10)
      false == done(e, 11)
(:b=>6, 17) == next(e, 11)
       true == done(e, 17)
"""

@test Duiz.iter([5 7; 6 8]) == """
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
"""

@test Duiz.iter([5,6,7,8]) == """
          e  = [5,6,7,8]
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
"""

@test Duiz.iter((5,6,7,8)) == """
          e  = (5,6,7,8)
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
"""

@test Duiz.iter(7:10) == """
          e  = 7:10
          7 == start(e)
      false == done(e, 7)
     (7, 8) == next(e, 7)
      false == done(e, 8)
     (8, 9) == next(e, 8)
      false == done(e, 9)
    (9, 10) == next(e, 9)
      false == done(e, 10)
   (10, 11) == next(e, 10)
       true == done(e, 11)
"""

@test Duiz.iter(1:5:11) == """
          e  = 1:5:11
          1 == start(e)
      false == done(e, 1)
     (1, 6) == next(e, 1)
      false == done(e, 6)
    (6, 11) == next(e, 6)
      false == done(e, 11)
   (11, 16) == next(e, 11)
       true == done(e, 16)
"""

@test Duiz.iter(12.0:-5:0.0) == """
          e  = 12.0:-5.0:2.0
          0 == start(e)
      false == done(e, 0)
  (12.0, 1) == next(e, 0)
      false == done(e, 1)
   (7.0, 2) == next(e, 1)
      false == done(e, 2)
   (2.0, 3) == next(e, 2)
       true == done(e, 3)
"""

@test Duiz.iter((2x for x in [5,6,7,90])) == """
          e  = [5,6,7,90]
          1 == start(e)
      false == done(e, 1)
     (5, 2) == next(e, 1)
      false == done(e, 2)
     (6, 3) == next(e, 2)
      false == done(e, 3)
     (7, 4) == next(e, 3)
      false == done(e, 4)
    (90, 5) == next(e, 4)
       true == done(e, 5)
"""
