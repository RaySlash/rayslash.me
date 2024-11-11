module Components exposing (..)

import Html exposing (Html, a, button, div, h1, h3, img, nav, p, text)
import Html.Attributes exposing (alt, class, height, href, src, style, width)



-- Primitives


card : Html msg -> Html msg -> Html msg -> Html msg
card header content footer =
    div [ class "card" ]
        [ div [ class "card-header" ] [ header ]
        , div [ class "card-content" ] [ content ]
        , div [ class "card-footer" ] [ footer ]
        ]


showCard : String -> String -> String -> Html msg
showCard title description imageUri =
    div [ class "showcard" ]
        [ card
            (h3 [ class "showcard-title" ] [ text title ])
            (p [ class "showcard-description" ] [ text description ])
            (img [ src imageUri, alt "Project Image", class "showcard-image" ] [])
        ]



-- Drop-in Components


heroCard : Html msg
heroCard =
    div [ class "hero-content" ]
        [ div [ class "hero-header" ]
            [ h1 [ class "hero-title" ] [ text "Hi, I’m Steve Mathew Joy, a student software developer" ]
            , div [ class "hero-location" ]
                [ img [ src "../public/map-pin-alt.svg", alt "Location", class "location-icon", width 30, height 30 ] []
                , text "Brisbane, Australia"
                ]
            ]
        , div [ class "hero-buttons" ]
            [ button [ class "hero-button contact-button" ] [ a [ href "#", class "social-link" ] [ text "Contact Me" ] ]
            , div [ class "hero-social-links" ]
                [ button [ class "hero-button" ] [ a [ href "#", class "social-link github" ] [ img [ src "../public/github.svg", alt "github" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link facebook" ] [ img [ src "../public/facebook.svg", alt "Facebook" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link instagram" ] [ img [ src "../public/instagram.svg", alt "Instagram" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link linkedin" ] [ img [ src "../public/linkedin.svg", alt "LinkedIn" ] [] ] ]
                ]
            ]
        ]


projectView : Html msg
projectView =
    div [ class "home-content" ]
        [ showCard "Work Experience Tracker App" "A social-media like application that allows students and teachers to collaborate about their work experiences in classes." "../public/workexptracker.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "../public/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "../public/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "../public/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "../public/nixos.png"
        ]


homeNavbar : Html msg
homeNavbar =
    div [ class "homenav" ]
        [ div [ class "homenav-item homenav-active" ] [ text "Projects" ]
        , div [ class "homenav-item" ] [ text "Work" ]
        , div [ class "homenav-item" ] [ text "Communities" ]
        , div [ class "homenav-item" ] [ text "Background" ]
        , div [ class "homenav-item" ] [ text "Fun" ]
        ]


navbar : Html msg
navbar =
    nav [ class "navbar" ]
        [ div [ class "navbar-logo" ]
            [ a [ href "#", class "logo-link" ] [ text "STEVE" ] ]
        , div [ class "navbar-links" ]
            [ a [ href "#", class "nav-link active" ] [ text "Home" ]
            , a [ href "#", class "nav-link" ] [ text "About" ]
            , a [ href "#", class "nav-link" ] [ text "Contact" ]
            , a [ href "#", class "nav-link" ] [ text "Blog" ]
            ]
        ]
