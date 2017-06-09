module Navigation exposing (view)

import Html exposing (..)
import Common.View exposing (link)
import Routes exposing (Sitemap(..))
import Messages exposing (Msg)
import Update exposing (Model)
import Stylesheets.Main exposing (CssClasses(..), cssHelpers)


{ id, class, classList } =
    cssHelpers


view : Model -> Html Msg
view model =
    nav []
        [ ul [ class [ Flex, Wrap ] ]
            [ li [ class [ Pacifico ] ] [ link model.route HomeR "N&C" ]
            , li [] [ link model.route PartyR "Party" ]
            , li [] [ link model.route GalleryR "Photo Gallery" ]
            , li [] [ link model.route OurStoryR "Our Story" ]
            ]
        ]
