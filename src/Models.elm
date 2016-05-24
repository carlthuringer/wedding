module Models exposing (Model, Flags)

import CountDown exposing (Model)
import Routes exposing (Sitemap)

type alias Model =
    { countDown : CountDown.Model
    , route : Sitemap
    }


type alias Flags =
    { path : String }
