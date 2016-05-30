module View exposing (view)

import Html exposing (Html, div, text)

import Routes exposing (Sitemap(..))
import Navigation
import Update exposing(Model)
import Messages exposing (Msg)

import Components.Home as Home
import Components.Party as Party
import Components.Venue as Venue
import Components.Gallery as Gallery
import Components.Contact as Contact
import Components.RSVP as RSVP

view : Model -> Html Msg
view model =
    div []
        [ Navigation.view
        , case model.route of
            HomeR () ->
                Home.view model

            PartyR () ->
                Party.view

            VenueR () ->
                Venue.view

            GalleryR () ->
                Gallery.view

            ContactR () ->
                Contact.view

            RSVPR () ->
                RSVP.view

            NotFoundR ->
                text "Not Found"
        ]
