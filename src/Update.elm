module Update exposing (Msg(..), Model, Flags, update, init)

import Ports exposing (pushPath)
import Routes exposing (Sitemap)
import Date exposing (Date)

type Msg
  = NoOp
  -- | TimeUpdate Int
  | RouteTo Sitemap
  | PathChanged String

type alias Model =
    --{ countDown : CountDownModel
    {
    route : Sitemap
    }

type alias Flags =
    { path : String }

type alias CountDownModel = {
  date : Date
}


init : Flags -> ( Model, Cmd Msg )
init { path } =
    let
        newModel =
            {
            --{ countDown = CountDown.init
            route = Routes.match path
            }
    in
        ( newModel, Cmd.none )

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        -- TimeUpdate timeInt ->
        --     let
        --         setCountdown =
        --             { model | countDown = CountDown.update timeInt model.countDown }
        --     in
        --         ( setCountdown, Cmd.none )

        RouteTo route ->
            ( model, pushPath (Routes.doRoute route) )

        NoOp ->
            ( model, Cmd.none )

        PathChanged path ->
            let
                modelUpdate =
                    { model | route = Routes.match path }
            in
                ( modelUpdate, Cmd.none )
