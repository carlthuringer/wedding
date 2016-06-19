module Update exposing (Model, Flags, update, init)

import Ports exposing (pushPath)
import Routes exposing (Sitemap)
import CountDown exposing (init)
import Messages exposing (Msg(..))


type alias Model =
    { countDown : CountDown.Model
    , route : Sitemap
    , contact : String
    }


type alias Flags =
    { path : String }


init : Flags -> ( Model, Cmd Msg )
init { path } =
    let
        newModel =
            { countDown = CountDown.init
            , route = Routes.match path
            , contact = ""
            }
    in
        ( newModel, Cmd.none )


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        TimeUpdate timeInt ->
            let
                setCountdown =
                    { model | countDown = CountDown.update timeInt model.countDown }
            in
                ( setCountdown, Cmd.none )

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

        ContactChange text ->
            let
                modelUpdate =
                    { model | contact = text }
            in
                ( modelUpdate, Cmd.none )
