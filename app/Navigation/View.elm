module Navigation.View where

import Html exposing (..)
import Html.Attributes exposing (..)

import Navigation.Model exposing (Model)
import Navigation.Action exposing (Action)

view : Signal.Address Action -> Model -> Html
view address model =
  nav [
    classList [
      ("navbar", True),
      ("navbar-inverse", True),
      ("navbar-fixed-top", True)
    ]
  ] [
    div [ class "container" ] [
      div [ class "navbar-header" ] [
        button [
          type' "button",
          classList [
            ("navbar-toggle", True),
            ("collapsed", True)
          ],
          attribute "data-toggle" "collapse",
          attribute "data-target" "#navbar",
          attribute "aria-expanded" "false",
          attribute "aria-controls" "navbar"
        ] [
          span [ class "sr-only" ] [ text "Toggle navigation" ],
          span [ class "icon-bar" ] [],
          span [ class "icon-bar" ] [],
          span [ class "icon-bar" ] []
        ],
        a [ class "navbar-brand", href "#" ] [ text "C&N"]
      ],
      div [
        id "navbar",
        classList [
          ("navbar-collapse", True),
          ("collapse", True)
        ],
        attribute "aria-expanded" "false"
      ] [ ul [ classList [ ("nav", True), ("navbar-nav", True) ] ] [
        li [ classList [ ("active", False) ] ] [ a [ href "#/" ] [ text "Home" ] ],
        li [ classList [ ("active", False) ] ] [ a [ href "#/party" ] [ text "Party" ] ],
        li [ classList [ ("active", False) ] ] [ a [ href "#/foo" ] [ text "Nothing" ] ]
      ] ]
    ]
  ]
