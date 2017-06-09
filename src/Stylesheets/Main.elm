module Stylesheets.Main exposing (css, CssClasses(..), CssIds(..), cssHelpers)

import Css exposing (..)
import Css.Elements exposing (body, h1, h2, h3, h4, h5, h6, article, img, nav, ul, li, a)
import Css.Namespace
import Html.CssHelpers


roseGold : Color
roseGold =
    rgb 245 189 259


peach : Color
peach =
    rgb 253 198 178


serenityBlue : Color
serenityBlue =
    rgb 145 168 210


mediumGrey : Color
mediumGrey =
    rgb 152 150 164


ivory : Color
ivory =
    rgb 229 225 223


nearlyWhite : Color
nearlyWhite =
    rgb 250 250 250


darkCharcoal : Color
darkCharcoal =
    rgb 57 57 57


pinkyCoralSomething : Color
pinkyCoralSomething =
    rgb 255 168 148


type CssClasses
    = Pacifico
    | Flex
    | Wrap
    | ThreeColumns
    | Center
    | Active
    | Column
    | CenterAuto
    | Gallery


type CssIds
    = HeadlineImage


cssHelpers : Html.CssHelpers.Namespace String class id msg
cssHelpers =
    Html.CssHelpers.withNamespace "ncwedding"


css : Stylesheet
css =
    (stylesheet << Css.Namespace.namespace "ncwedding")
        [ body
            [ color darkCharcoal
            , fontFamilies [ "Open Sans", "sans-serif" ]
            , fontSize (pt 12)
            , margin2 zero (px 20)
            ]
        , each [ h1, h2, h3 ] [ marginBottom (em 0.3) ]
        , each [ h2, h3, h4, h5, h6 ]
            [ margin2 (Css.rem 0.3) zero
            , paddingBottom (Css.rem 0.3)
            , borderBottom3 (px 0.5) solid darkCharcoal
            ]
        , h1 [ margin2 (Css.rem 1) auto ]
        , class Pacifico
            [ fontFamilies [ "Pacifico", "serif" ]
            , lineHeight (em 1)
            ]
        , id HeadlineImage
            [ descendants [ img [ width (vw 30) ] ] ]
        , article
            [ margin4 zero
                (Css.rem 0.5)
                (Css.rem 1)
                (Css.rem 0.5)
            , descendants
                [ img
                    [ float right
                    , width (Css.rem 17)
                    ]
                ]
            , after
                [ property "visible" "hidden"
                , display block
                , fontSize (px 0)
                , property "content" " "
                , property "clear" "both"
                , height zero
                ]
            ]
        , class Flex
            [ withClass Wrap [ flexWrap wrap ]
            , withClass Column [ flexDirection column ]
            , displayFlex
            , flex (int 1)
            , descendants
                [ class ThreeColumns
                    [ maxWidth (Css.rem 29)
                    ]
                ]
            , justifyContent spaceAround
            ]
        , nav
            [ descendants
                [ ul [ padding zero ]
                , li
                    [ listStyle none
                    , margin4 zero (Css.rem 0.1) (Css.rem 0.3) (Css.rem 0.1)
                    , descendants
                        [ a [ padding2 zero (Css.rem 0.5) ]
                        ]
                    , children
                        [ class Active
                            [ property "transition" "2s all"
                            , backgroundColor pinkyCoralSomething
                            , color nearlyWhite
                            ]
                        ]
                    ]
                ]
            , textTransform uppercase
            , fontFamilies [ "Open Sans Condensed", "sans-serif" ]
            ]
        , class CenterAuto
            [ textAlign center
            , marginLeft auto
            , marginRight auto
            ]
        , a
            [ color pinkyCoralSomething
            , fontWeight (int 800)
            , textDecoration none
            , hover
                [ textDecoration underline
                , property "transition" "1s all"
                , color pinkyCoralSomething
                ]
            ]
        , class Gallery
            [ displayFlex
            , flexDirection row
            , flexWrap wrap
            , width (pct 100)
            , fontSize (px 0)
            , justifyContent center
            , descendants
                [ img
                    [ height (vh 80)
                    , margin2 (px 5) (px 8)
                    ]
                ]
            ]
        , mediaQuery
            "only screen and (max-width: 480px)"
            [ class Gallery
                [ descendants
                    [ img
                        [ height auto
                        , width (vh 80)
                        ]
                    ]
                ]
            , article
                [ descendants
                    [ img
                        [ float center
                        , width (pct 100)
                        ]
                    ]
                ]
            , body
                [ margin2 zero (px 8) ]
            ]
        ]



-- /* Portrait */
-- @media only screen
--     article img {
--         float: initial;
--         width: 100%;
--     }
--     body {
--         margin: 0 8px;
--     }
-- }
