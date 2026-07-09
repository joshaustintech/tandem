module Main exposing (main)

import Browser
import Html exposing (Html, button, div, h1, p, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


type alias Model =
    Int


type Msg
    = Increment
    | Decrement


main : Program () Model Msg
main =
    Browser.sandbox
        { init = 0
        , update = update
        , view = view
        }


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Model -> Html Msg
view model =
    div [ class "min-h-screen bg-slate-950 text-white flex items-center justify-center p-6" ]
        [ div [ class "w-full max-w-xl rounded-lg border border-slate-800 bg-slate-900 p-8 shadow-xl" ]
            [ h1 [ class "text-4xl font-bold tracking-tight" ] [ text "Counter" ]
            , p [ class "mt-4 text-slate-300" ] [ text "Simple Elm state, like the official demo." ]
            , div [ class "mt-8 flex items-center gap-4" ]
                [ button
                    [ class "rounded-md bg-slate-700 px-4 py-2 font-medium hover:bg-slate-600"
                    , onClick Decrement
                    ]
                    [ text "-" ]
                , p [ class "min-w-20 text-center text-5xl font-semibold tabular-nums" ]
                    [ text (String.fromInt model) ]
                , button
                    [ class "rounded-md bg-sky-500 px-4 py-2 font-medium text-slate-950 hover:bg-sky-400"
                    , onClick Increment
                    ]
                    [ text "+" ]
                ]
            ]
        ]
