module Pages.Contact exposing (..)

import Html exposing (Html, div, text)
import Types exposing (..)


contactView : Model -> Html Msg
contactView model =
    div [] [ text "Contact me" ]
