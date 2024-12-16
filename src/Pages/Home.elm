module Pages.Home exposing (..)

import Components exposing (..)
import Html exposing (Html, a, div, img, text)
import Html.Attributes exposing (alt, class, src)
import Types exposing (..)


homeNavbar : Html Msg
homeNavbar =
    div [ class "homenav" ]
        [ a [ class "homenav-item" ] [ text "Projects" ]
        , a [ class "homenav-item" ] [ text "Work" ]
        , a [ class "homenav-item" ] [ text "Communities" ]
        , a [ class "homenav-item" ] [ text "Background" ]
        , a [ class "homenav-item" ] [ text "Fun" ]
        ]


homeView : Model -> Html Msg
homeView model =
    div
        [ class "content-container"
        ]
        [ div [ class "hero" ]
            [ heroCard
            , img [ class "hero-image", src "./assets/images/hero.png", alt "Profile Image" ] []
            ]
        , homeNavbar
        , projectView
        ]
