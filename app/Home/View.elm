module Home.View where

import Html exposing (..)
import Html.Attributes exposing (..)

view address action =
  div [] [
    h1 [] [ text "Carl & Nicole"],
    div [ class "wedding-colors" ] [
      div [ class "rose-gold" ] [],
      div [ class "peach" ] [],
      div [ class "serenity-blue" ] [],
      div [ class "medium-grey" ] []
    ],
    p [ class "lead" ] [
      -- CountDown.view model.countDown,
      text " Until they get married!"
    ]
  ]
