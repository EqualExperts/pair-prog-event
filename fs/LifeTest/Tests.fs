module Tests

open Life
open System
open Xunit

[<Fact>]
let Overpopulation() =
    let state =
        [ [ 1; 1 ]
          [ 0; 1 ]
          [ 1; 1 ] ]

    let next = run state
    Assert.Equal<State>(state, next)
