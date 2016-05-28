module View exposing (view)

import Html exposing (Html, div, text)

import Routes exposing (Sitemap(..))
import Navigation
-- import Messages exposing (Msg(..))
import Update exposing(Msg(..), Model)

import Components.Home as Home
import Components.Party as Party
import Components.Venue as Venue

view : Model -> Html Update.Msg
view model =
    div []
        [ Navigation.view
        , case model.route of
            HomeR () ->
                Home.view model

            PartyR () ->
                Party.view model

            VenueR () ->
                Venue.view model

            NotFoundR ->
                text "Not Found"
        ]
