module Components.Gallery exposing (view)

import Html exposing (..)
import Html.Attributes exposing (class, src, title)
import Messages exposing (Msg)
import Photos exposing (photos)


view : Html Msg
view =
    div []
        [ h1 [] [ text "Gallery" ]
        , p [] [ text "Photo gallery coming soon!" ]
        , div [] (toGallery photos)
        ]

toGallery : (Photos.Photos -> List (Html Msg))
toGallery =
    let toImage (path, set) =
        div [ class "gallery-image" ] [ img [ src path, srcSet set ] [] ]
    in List.map toImage


srcSet : String -> Html.Attribute Msg
srcSet srcset =
    Html.Attributes.attribute "srcSet" srcset
