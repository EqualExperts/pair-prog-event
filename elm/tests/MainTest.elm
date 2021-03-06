module MainTest exposing (suite)

import Expect
import Main exposing (life)
import Test exposing (..)


suite : Test
suite =
    describe "Game of Life"
        [ describe "populated cell"
            [ test "dies of solitude if it has no neighbours" <|
                \_ ->
                    life
                        [ [ False, False, False ]
                        , [ False, True, False ]
                        , [ False, False, False ]
                        ]
                        |> Expect.equal
                            [ [ False, False, False ]
                            , [ False, False, False ]
                            , [ False, False, False ]
                            ]
            , todo "survives if it has two or three neighbors"
            , todo "dies of solitude if it has one neighbour"
            , todo "dies by overpopulation with more than three neighbours"
            ]
        , describe "empty cell"
            [ todo "becomes populated if it has three neighbors"
            ]
        ]
