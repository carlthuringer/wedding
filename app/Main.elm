-- Main file
module Main where

import Html exposing (..)
import Date exposing (..)
import Time exposing (..)
import StartApp.Simple exposing (start)

import CountDown exposing (init, Action)

type alias Model = { countDown : CountDown.Model }

type Action = CountDown CountDown.Action

init : Model
init = { countDown = CountDown.init }

view : Model -> Html
view state =
  div [] [
    nav [] [
      ul [] [
        li [] [ text "Menu 1" ],
        li [] [ text "Item 6" ]
      ]
    ],
    section [] [
      h1 [] [ text "Carl Thuringer & Nicole Cammarata"],
      article [] [
        h2 [] [ CountDown.view state.countDown ],
        h3 [] [ text "Until they get married!" ]
      ]
    ]
  ]

update : Action -> Model -> Model
update action model =
  case action of
    CountDown act -> { model | countDown = CountDown.update act model.countDown }

changes : Signal Action
changes = Signal.mergeMany
  [ Signal.map CountDown CountDown.changes ]

state : Signal Model
state = Signal.foldp update init changes

main = Signal.map view state
