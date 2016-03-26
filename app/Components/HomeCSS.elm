module Components.HomeCSS where

import Css exposing (..)
import Css.Elements exposing (..)

css =
  stylesheet
  [ (.) "wedding-colors"
    [ children
    [ div
      [ width (px 32)
      , height (px 32)
      , border3 (px 1) solid (rgb 0 0 0)]]]
  ]
