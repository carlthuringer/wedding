module CountDown.Feature where

import StartApp exposing (App, start)
import Effects exposing (Effects)
import Html exposing (div)

type alias CountDownFeature = App Model

type alias Model = { }

type Action = NoOp

mailbox = Signal.mailbox NoOp

update action model = (model, Effects.none)

view address model = div [] []

createCountdownFeature =
  start
    { init = ({ }, Effects.none)
    , inputs = [ mailbox.signal ]
    , update = update
    , view = view }
