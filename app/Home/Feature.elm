module Home.Feature where

import StartApp exposing (App, start)
import Effects exposing (Effects)
import Html exposing (div)

import Home.View exposing (view)

type alias HomeFeature = App Model

type alias Model = { }

type Action = NoOp

mailbox : Signal.Mailbox Action
mailbox = Signal.mailbox NoOp

update action model = (model, Effects.none)

createHomeFeature : HomeFeature
createHomeFeature =
  start
    { init = ({ }, Effects.none)
    , inputs = [ mailbox.signal ]
    , update = update
    , view = view }
