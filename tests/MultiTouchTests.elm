module MultiTouchTests exposing (all)

import Controller as C
import Expect
import Midi
import Style exposing (AppColour(..), LabelSize(..))
import Test exposing (..)


fader : C.FaderStatus -> Int -> C.Controller
fader status valuePercent =
    C.Fader
        { status = status
        , label = "Fader"
        , labelSize = Just Small
        , colour = LightGrey
        , channel = Midi.Ch1
        , ccNumber = 7
        , valuePercent = valuePercent
        , valueMin = 0
        , valueMax = 100
        }


all : Test
all =
    describe "Multi-touch fader handling"
        [ test "An idle fader is grabbed by the first changed touch only" <|
            \_ ->
                C.faderChangingTouches (fader C.Set 50)
                    [ ( 1, ( 0, 100 ) ), ( 2, ( 0, 300 ) ) ]
                    |> Expect.equal
                        ( fader (C.Changing 1 ( 0, 100 )) 50
                        , [ Midi.ControllerChange { channel = 0, controller = 7, value = 50 } ]
                        )
        , test "A grabbed fader follows its own touch when it isn't the first changed touch" <|
            \_ ->
                C.faderChangingTouches (fader (C.Changing 2 ( 0, 100 )) 50)
                    [ ( 1, ( 0, 0 ) ), ( 2, ( 0, 90 ) ) ]
                    |> Expect.equal
                        ( fader (C.Changing 2 ( 0, 90 )) 60
                        , [ Midi.ControllerChange { channel = 0, controller = 7, value = 60 } ]
                        )
        , test "Touches belonging to other controls leave a grabbed fader unchanged" <|
            \_ ->
                C.faderChangingTouches (fader (C.Changing 2 ( 0, 100 )) 50)
                    [ ( 1, ( 0, 0 ) ), ( 3, ( 0, 500 ) ) ]
                    |> Expect.equal ( fader (C.Changing 2 ( 0, 100 )) 50, [] )
        ]
