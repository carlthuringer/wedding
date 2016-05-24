module Main exposing (..)

import Html exposing (Html, div, h1, text, p)
import Html.App
import CountDown
import Navigation
import Messages exposing (Msg(..))
import Models exposing (Model, Flags)
import Routes exposing (Sitemap(..))
import Ports exposing (pushPath, path)
import Components.Home exposing (homeview)
import Components.Party exposing (partyview)


init : Flags -> ( Model, Cmd Msg )
init { path } =
    let
        newModel =
            { countDown = CountDown.init
            , route = Routes.match path
            }
    in
        ( newModel, Cmd.none )


view : Model -> Html Msg
view model =
  div []
        [ Navigation.view
        , case model.route of
            HomeR () -> homeview model
            PartyR () -> partyview model
            NotFoundR -> text "Not Found"
        ]


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



-- ApplyRoute ( route, location ) ->
--   let
--     routing =
--       model.routing
--     updateRouting =
--       { routing | route = route, location = location }
--   in
--     ( { model | routing = updateRouting }, Cmd.none )
-- port hostClock : (Int) -> Sub msg
-- port routeRunTask : Task () ()
-- port routeRunTask =
--   router.run
-- routerSignal : Msg Cmd
-- routerSignal =
--   Signal.map ApplyRoute router.signal
-- timeSignal : Signal Action
-- timeSignal =
--   Signal.map TimeUpdate hostClock


main : Program Flags
main =
    Html.App.programWithFlags
        { init = init
        , update = update
        , view = view
        , subscriptions =
            \_ -> Sub.batch [ path PathChanged ]
        }
