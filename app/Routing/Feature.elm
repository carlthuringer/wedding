module Routing.Feature where

import StartApp exposing (App, start)
import Html exposing (Html, div, text)
import Effects exposing (Effects)
import Hop
import Hop.Types exposing (Router, PathMatcher, Location, newLocation)
import Hop.Matchers exposing (match1)

import Home.Feature exposing (HomeFeature, createHomeFeature)

type alias Model =
  { location: Location
  , route: Route }

type Route
  = HomeRoute
  | NotFoundRoute

type alias Config = { }

type alias RoutingFeature = App Model

type Action = NoOp

router : Router Route
router = Hop.new
  { matchers = matchers
  , notFound = NotFoundRoute }

matchers : List (PathMatcher Route)
matchers =
  let
    matcherHome = match1 HomeRoute "/"
  in
    [ matcherHome ]


mailbox : Signal.Mailbox Action
mailbox = Signal.mailbox NoOp

view address model = model.defaultView

update action model = model

initialModel : Config -> Model
initialModel config =
  { location = newLocation
  , route = HomeRoute }

homeFeature =
  createHomeFeature

routedView model =
  case model.route of
    HomeRoute -> homeFeature.html
    NotFoundRoute -> Signal.constant (text "Not Found")
-- createRoutingFeature : Config -> RoutingFeature
createRoutingFeature config =
  Signal.foldp update (initialModel config) (Signal.constant NoOp)

  -- start
  --   { init = (initialModel config, Effects.none)
  --   , inputs = [ mailbox.signal ]
  --   , update = update
  --   , view = view }
