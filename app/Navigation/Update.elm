module Navigation.Update where

import Effects exposing (Effects)
import Navigation.Action exposing (Action(NoOp))
import Navigation.Model exposing (Model)

update : Action -> Model -> (Model, Effects Action)
update action model =
  case action of
    NoOp -> (model, Effects.none)
