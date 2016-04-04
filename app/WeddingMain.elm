module WeddingMain where

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

import Navigation.Feature exposing (NavigationFeature, createNavigationFeature)
import Navigation.Action exposing (Action(NoOp))

import Routing.Feature exposing (RoutingFeature, Route(..), createRoutingFeature)
import CountDown.Feature exposing (CountDownFeature, createCountdownFeature)
import Home.Feature exposing (HomeFeature, createHomeFeature)

weddingMailbox : Signal.Mailbox Navigation.Action.Action
weddingMailbox = Signal.mailbox (NoOp)

navigationFeature : NavigationFeature
navigationFeature = createNavigationFeature

-- routingFeature : RoutingFeature
-- routingFeature =
--   createRoutingFeature

homeFeature = createHomeFeature
routingFeature = createRoutingFeature { }

weddingMainView navigationView routedView =
  div []
    [ navigationView
    , div [ class "container" ]
      [ routedView ] ]

doRouting routing =
  case routing.route of
    HomeRoute ->
      Signal.map2 weddingMainView navigationFeature.html homeFeature.html
    NotFoundRoute ->
      Signal.map2 weddingMainView navigationFeature.html (Signal.constant (text "Not found"))
-- html : Signal Html
html = Signal.map doRouting routingFeature
  -- let
  --   routedView =
  --     Signal.map doRouting routingFeature
  --
  -- in Signal.map2 weddingMainView navigationFeature.html routedView

weddingMainFeature =
  { html = html }
