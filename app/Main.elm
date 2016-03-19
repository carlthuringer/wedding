-- Main file
module Main where

import Html exposing (..)
import Html.Attributes exposing (..)
import Date exposing (..)
import Time exposing (..)
import StartApp.Simple exposing (start)

import CountDown exposing (init, view, Action(ClockTick))
import Navigation exposing (view)

-- ROUTING IMPORTS
import Hop
import Hop.Matchers exposing (match1, match2)
import Hop.Navigate exposing (navigateTo)
import Hop.Types exposing (Router, PathMatcher, Location, newLocation)
import Task exposing (Task)


type alias Model =
  { countDown: CountDown.Model
  , location: Location
  , route: Route }

type Action
  = CountDown CountDown.Action
  | TimeUpdate Int
  | ApplyRoute (Route, Location)

-- ROUTING
type Route
  = HomeRoute
  | NotFoundRoute

matcherHome : PathMatcher Route
matcherHome = match1 HomeRoute "/"

matchers : List (PathMatcher Route)
matchers =
  [ matcherHome ]

router : Router Route
router = Hop.new
  { matchers = matchers
  , notFound = NotFoundRoute }

boxedRouterSignal : Signal Action
boxedRouterSignal = Signal.map ApplyRoute router.signal

init : Model
init =
  { countDown = CountDown.init
  , location = newLocation
  , route = HomeRoute }

view : Model -> Html
view model =
  case model.route of
    HomeRoute -> homeView model
    NotFoundRoute -> p [] [ text "Where are we" ]

homeView : Model -> Html
homeView model =
  div [] [
    Navigation.view,
    div [ class "container" ] [
      div [] [
        h1 [] [ text "Carl & Nicole"],
        p [ class "lead" ] [
          CountDown.view model.countDown,
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
    ApplyRoute (route, location) -> { model | route = route, location = location }

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
