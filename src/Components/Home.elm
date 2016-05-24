module Components.Home exposing (homeview)

import Html exposing (..)
import Html.Attributes exposing (..)
import CountDown exposing (view)
import Models exposing (Model)
import Messages exposing (Msg)

homeview : Model -> Html Msg
homeview model =
  div [] [
    h1 [] [ text "Carl & Nicole"],
    div [ class "wedding-colors" ] [
      div [ class "rose-gold" ] [],
      div [ class "peach" ] [],
      div [ class "serenity-blue" ] [],
      div [ class "medium-grey" ] []
    ],
    p [ class "lead" ] [
      CountDown.view model.countDown,
      text " Until they get married!"
    ]
  ]
