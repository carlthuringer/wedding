-- Main file
module Main where

import Html exposing (..)
import Html.Attributes exposing (..)
import Date exposing (..)
import Time exposing (..)
import StartApp.Simple exposing (start)

import CountDown exposing (init, Action(ClockTick))
import Navigation exposing (view)
import Home exposing (view)
import Models exposing (Model)
import Routing exposing (init, router, Route(NotFoundRoute, HomeRoute))

-- ROUTING IMPORTS
import Hop
import Hop.Matchers exposing (match1, match2)
import Hop.Navigate exposing (navigateTo)
import Hop.Types exposing (Router, PathMatcher, Location, newLocation)
import Task exposing (Task)

type Action
  = CountDown CountDown.Action
  | TimeUpdate Int
  | ApplyRoute (Route, Location)

-- ROUTING
boxedRouterSignal : Signal Action
boxedRouterSignal = Signal.map ApplyRoute router.signal

init : Model
init =
  { countDown = CountDown.init
  , routing = Routing.init }

view : Model -> Html
view model =
  div [] [
    Navigation.view,
    div [ class "container" ] [ routedView model ] ]

routedView : Model -> Html
routedView model =
  let myModel = model
  in
  case model.routing.route of
    HomeRoute -> Home.view myModel
    NotFoundRoute -> p [] [ text "Where are we" ]

update : Action -> Model -> Model
update action model =
  case action of
    CountDown act -> { model | countDown = CountDown.update act model.countDown }
    TimeUpdate timeInt -> { model | countDown = CountDown.update (ClockTick (toFloat timeInt)) model.countDown }
    ApplyRoute (route, location) ->
      let
        routing = model.routing
        updateRouting = { routing | route = route, location = location }
      in { model | routing = updateRouting }

changes : Signal Action
changes = Signal.mergeMany
  [ Signal.map TimeUpdate hostClock ]

state : Signal Model
state = Signal.foldp update init changes

type TimeSeconds = Int
port hostClock : Signal Int

port routeRunTask : Task () ()
port routeRunTask = router.run

main = Signal.map view state
