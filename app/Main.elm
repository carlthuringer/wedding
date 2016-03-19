-- Main file
module Main where

import Html exposing (..)
import Html.Attributes exposing (..)
import Date exposing (..)
import Time exposing (..)
import StartApp.Simple exposing (start)

import CountDown exposing (init, view, Action(ClockTick))
import Navigation exposing (view)

type alias Model = { countDown : CountDown.Model }

type Action
  = CountDown CountDown.Action
  | TimeUpdate Int

init : Model
init = { countDown = CountDown.init }

view : Model -> Html
view state =
  div [] [
    Navigation.view,
    div [ class "container" ] [
      div [] [
        h1 [] [ text "Carl Thuringer & Nicole Cammarata"],
        p [ class "lead"] [
          CountDown.view state.countDown,
          text " Until they get married!"
        ]
      ]
    ]
  ]

update : Action -> Model -> Model
update action model =
  case action of
    CountDown act -> { model | countDown = CountDown.update act model.countDown }
    TimeUpdate timeInt -> { model | countDown = CountDown.update (ClockTick (toFloat timeInt)) model.countDown }

changes : Signal Action
changes = Signal.mergeMany
  [ Signal.map TimeUpdate hostClock ]

state : Signal Model
state = Signal.foldp update init changes

type TimeSeconds = Int
port hostClock : Signal Int

main = Signal.map view state
