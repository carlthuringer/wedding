module Home where

import Html exposing (..)
import Html.Attributes exposing (..)
import CountDown exposing (view)
import Models exposing (Model)

view : Model -> Html
view model =
  div [] [
    h1 [] [ text "Carl & Nicole"],
    p [ class "lead" ] [
      CountDown.view model.countDown,
      text " Until they get married!"
    ]
  ]
