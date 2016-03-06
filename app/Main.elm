-- Main file
module Main where

import Html exposing (..)

import Date exposing (..)
import Time exposing (..)

type alias Model =
  { date : Date }

type Change = ClockTick Time

initialState : Model
initialState = { date = Date.fromTime(0) }

view model =
  div [] [
    nav [] [
      ul [] [
        li [] [ text ("Current Time: " ++ toString (Date.toTime model.date)) ],
        li [] [ text "Item 2" ]
      ]
    ],
    h1 [] [ text "Carl & Nicole Thuringer"],
    article [] [
      p [] [ text "Just testing this all out, figuring out how it will work." ]
    ]
  ]

tick : Change -> Model -> Model
tick change model =
  case change of
    ClockTick time -> { model | date = Date.fromTime(time) }

changes : Signal Change
changes = Signal.map ClockTick clock

clock : Signal Time
clock = Time.every Time.second

state : Signal Model
state = Signal.foldp tick initialState changes

main = Signal.map view state
