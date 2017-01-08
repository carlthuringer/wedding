module Photos exposing (..)

import Html exposing (Attribute, Html, img)
import Html.Attributes exposing (src)
import Messages exposing (Msg)


type alias SrcPath =
    String


type alias SrcSet =
    String


type alias Photos =
    List Photo


type alias Photo =
    ( SrcPath, SrcSet )


toImg : ( SrcPath, SrcSet ) -> Html Msg
toImg ( path, set ) =
    img [ src path, srcSet set ] []


srcSet : String -> Html.Attribute Msg
srcSet srcset =
    Html.Attributes.attribute "srcSet" srcset


getSrc : ( SrcPath, SrcSet ) -> SrcPath
getSrc ( path, _ ) =
    path


engagement =
    { cn11 = ( "/assets/engagement/CN-11_320.jpg", "/assets/engagement/CN-11_320.jpg 320w,/assets/engagement/CN-11_700.jpg 700w,/assets/engagement/CN-11_1250.jpg 1250w" )
    , cn19 = ( "/assets/engagement/CN-19_320.jpg", "/assets/engagement/CN-19_320.jpg 320w,/assets/engagement/CN-19_700.jpg 700w,/assets/engagement/CN-19_1250.jpg 1250w" )
    , cn37 = ( "/assets/engagement/CN-37_320.jpg", "/assets/engagement/CN-37_320.jpg 320w,/assets/engagement/CN-37_700.jpg 700w,/assets/engagement/CN-37_1250.jpg 1250w" )
    , cn4 = ( "/assets/engagement/CN-4_320.jpg", "/assets/engagement/CN-4_320.jpg 320w,/assets/engagement/CN-4_700.jpg 700w,/assets/engagement/CN-4_1250.jpg 1250w" )
    , cn41 = ( "/assets/engagement/CN-41_320.jpg", "/assets/engagement/CN-41_320.jpg 320w,/assets/engagement/CN-41_700.jpg 700w,/assets/engagement/CN-41_1250.jpg 1250w" )
    , cn49 = ( "/assets/engagement/CN-49_320.jpg", "/assets/engagement/CN-49_320.jpg 320w,/assets/engagement/CN-49_700.jpg 700w,/assets/engagement/CN-49_1250.jpg 1250w" )
    , cn7 = ( "/assets/engagement/CN-7_320.jpg", "/assets/engagement/CN-7_320.jpg 320w,/assets/engagement/CN-7_700.jpg 700w,/assets/engagement/CN-7_1250.jpg 1250w" )
    , cn72 = ( "/assets/engagement/CN-72_320.jpg", "/assets/engagement/CN-72_320.jpg 320w,/assets/engagement/CN-72_700.jpg 700w,/assets/engagement/CN-72_1250.jpg 1250w" )
    , cn85 = ( "/assets/engagement/CN-85_320.jpg", "/assets/engagement/CN-85_320.jpg 320w,/assets/engagement/CN-85_700.jpg 700w,/assets/engagement/CN-85_1250.jpg 1250w" )
    , cn = ( "/assets/engagement/CN_320.jpg", "/assets/engagement/CN_320.jpg 320w,/assets/engagement/CN_700.jpg 700w,/assets/engagement/CN_1250.jpg 1250w" )
    }


party =
    { beth = ( "/assets/party/beth_320.jpg", "/assets/party/beth_320.jpg 320w,/assets/party/beth_700.jpg 700w,/assets/party/beth_1250.jpg 1250w" )
    , brian = ( "/assets/party/brian_320.jpg", "/assets/party/brian_320.jpg 320w,/assets/party/brian_700.jpg 700w,/assets/party/brian_1250.jpg 1250w" )
    , carolyn = ( "/assets/party/carolyn_320.jpg", "/assets/party/carolyn_320.jpg 320w,/assets/party/carolyn_700.jpg 700w,/assets/party/carolyn_1250.jpg 1250w" )
    , dave = ( "/assets/party/dave_320.jpg", "/assets/party/dave_320.jpg 320w,/assets/party/dave_700.jpg 700w,/assets/party/dave_1250.jpg 1250w" )
    , dustin = ( "/assets/party/dustin_320.jpg", "/assets/party/dustin_320.jpg 320w,/assets/party/dustin_700.jpg 700w,/assets/party/dustin_1250.jpg 1250w" )
    , jill = ( "/assets/party/jill_320.jpg", "/assets/party/jill_320.jpg 320w,/assets/party/jill_700.jpg 700w,/assets/party/jill_1250.jpg 1250w" )
    , joanna = ( "/assets/party/joanna_320.jpg", "/assets/party/joanna_320.jpg 320w,/assets/party/joanna_700.jpg 700w,/assets/party/joanna_1250.jpg 1250w" )
    , kate = ( "/assets/party/kate_320.jpg", "/assets/party/kate_320.jpg 320w,/assets/party/kate_700.jpg 700w,/assets/party/kate_1250.jpg 1250w" )
    , paul = ( "/assets/party/paul_320.jpg", "/assets/party/paul_320.jpg 320w,/assets/party/paul_700.jpg 700w,/assets/party/paul_1250.jpg 1250w" )
    , sarah = ( "/assets/party/sarah_320.jpg", "/assets/party/sarah_320.jpg 320w,/assets/party/sarah_700.jpg 700w,/assets/party/sarah_1250.jpg 1250w" )
    , scott = ( "/assets/party/scott_320.jpg", "/assets/party/scott_320.jpg 320w,/assets/party/scott_700.jpg 700w,/assets/party/scott_1250.jpg 1250w" )
    }
