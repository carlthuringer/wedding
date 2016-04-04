module Models (Model) where

import CountDown exposing (Model)
import Hop.Types exposing (Location)
import Routing exposing (Route, Model)

type alias Model =
  { countDown: CountDown.Model
  , routing: Routing.Model }