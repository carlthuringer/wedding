module Components.Contact exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput, targetValue)
import Http exposing (encodeUri)
import Messages exposing (Msg, Msg(ContactChange))
import Update exposing (Model)


view : Model -> Html Msg
view model =
    div [ class "contact" ]
        [ h1 [] [ text "Contact Us" ]
        , textarea
            [ class "contact-form"
            , rows 10
            , cols 10
            , onInput ContactChange
            , placeholder "Type your short message here..."
            ]
            []
        , div []
            [ a
                [ mailTo model.contact
                , class "contact-button"
                ]
                [ text "Send with eMail App" ]
            ]
        ]


mailTo : String -> Attribute a
mailTo contact =
    let
        body =
            "body=" ++ encodeUri contact
    in
        href ("mailto:wedding-contact@thuringer.us?subject=Contact Form Submission&" ++ body)
