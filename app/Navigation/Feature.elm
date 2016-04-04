module Navigation.Feature where

import StartApp exposing (App, start)
import Effects exposing (Effects)
import Navigation.Model exposing (Model)
import Navigation.Update exposing (update)
import Navigation.Action exposing (Action(..))
import Navigation.View exposing (view)

type alias NavigationFeature =
  App Model

mailbox : Signal.Mailbox Action
mailbox = Signal.mailbox NoOp

createNavigationFeature : NavigationFeature
createNavigationFeature =
  start
    { init = ({ }, Effects.none)
    , update = update
    , view = view
    , inputs = [ mailbox.signal ]
    }
