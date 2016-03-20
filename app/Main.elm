-- Main file
module Main where

import Html exposing (..)
import Html.Attributes exposing (..)

import CountDown
import Navigation

import Routing exposing (router)
import Hop.Types

-- VIEW IMPORTS
import Components

import Task exposing (Task)

type Action
  = TimeUpdate Int
  | ApplyRoute (Routing.Route, Hop.Types.Location)

type alias Model =
  { countDown: CountDown.Model
  , routing: Routing.Model }

init : Model
init =
  { countDown = CountDown.init
  , routing = Routing.init }

view : Model -> Html
view model =
  div [] [
    Navigation.view,
    div [ class "container" ] [ (Routing.view model.routing Components.views) model ] ]

update : Action -> Model -> Model
update action model =
  case action of
    TimeUpdate timeInt -> { model | countDown = CountDown.update timeInt model.countDown }
    ApplyRoute (route, location) ->
      let
        routing = model.routing
        updateRouting = { routing | route = route, location = location }
      in { model | routing = updateRouting }

model : Signal Model
model = let
  signals = Signal.mergeMany
    [ Signal.map TimeUpdate hostClock
    , Signal.map ApplyRoute router.signal ]
  in Signal.foldp update init signals

port hostClock : Signal Int

port routeRunTask : Task () ()
port routeRunTask = router.run

main = Signal.map view model
