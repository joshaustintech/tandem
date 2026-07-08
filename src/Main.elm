module Main exposing (main)

import Browser
import Html exposing (Html, div, h1, p, text)
import Html.Attributes exposing (class)


main : Program () () msg
main =
    Browser.sandbox
        { init = ()
        , update = \_ model -> model
        , view = view
        }


view : () -> Html msg
view _ =
    div [ class "min-h-screen bg-slate-950 text-white flex items-center justify-center p-6" ]
        [ div [ class "max-w-xl rounded-lg border border-slate-800 bg-slate-900 p-8 shadow-xl" ]
            [ h1 [ class "text-4xl font-bold tracking-tight" ] [ text "Hello from Elm" ]
            , p [ class "mt-4 text-slate-300" ] [ text "Vite builds the app. Tailwind styles it." ]
            ]
        ]
