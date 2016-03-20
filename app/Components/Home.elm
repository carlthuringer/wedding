module Components.Home where

import Html exposing (..)
import Html.Attributes exposing (..)
import CountDown exposing (view)

view model =
  div [] [
    h1 [] [ text "Carl & Nicole"],
    p [ class "lead" ] [
      CountDown.view model.countDown,
      text " Until they get married!"
    ]
  ]
