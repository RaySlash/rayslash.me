module Components exposing (..)

import Html exposing (Html, a, button, div, h1, h3, img, nav, p, text)
import Html.Attributes exposing (alt, class, classList, height, href, id, src, width)
import Html.Events exposing (onClick)
import Html.Keyed as Keyed
import Types exposing (..)
import Utils exposing (routeToHref, routeToString)



-- Primitives


card : Html msg -> Html msg -> Html msg -> Html msg
card header content footer =
    div
        [ class "container"
        ]
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


colortoggleButton : ColorMode -> Html Msg
colortoggleButton mode =
    button
        [ class "toggle-button"
        , onClick
            (ToggleColorMode
                (if mode == Light then
                    Dark

                 else
                    Light
                )
            )
        ]
        [ img
            [ alt "Color Scheme"
            , class "colortoggle-button"
            , width 20
            , height 20
            , src
                (if mode == Light then
                    "./assets/icons/moon.svg"

                 else
                    "./assets/icons/sun.svg"
                )
            ]
            []
        ]



-- Drop-in Components


heroCard : Html msg
heroCard =
    div [ class "hero-content" ]
        [ div [ class "hero-header" ]
            [ h1 [ class "hero-title" ] [ text "Hi, I’m Steve Mathew Joy, a student software developer" ]
            , div [ class "hero-location" ]
                [ img [ src "./assets/icons/map-pin-alt.svg", alt "Location", class "location-icon", width 30, height 30 ] []
                , text "Brisbane, Australia"
                ]
            ]
        , div [ class "hero-buttons" ]
            [ button [ class "hero-button contact-button" ] [ a [ href "#", class "social-link" ] [ text "Contact Me" ] ]
            , div [ class "hero-social-links" ]
                [ button [ class "hero-button" ] [ a [ href "#", class "social-link github" ] [ img [ src "./assets/icons/github.svg", alt "github" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link facebook" ] [ img [ src "./assets/icons/facebook.svg", alt "facebook" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link instagram" ] [ img [ src "./assets/icons/instagram.svg", alt "instagram" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link linkedin" ] [ img [ src "./assets/icons/linkedin.svg", alt "linkedin" ] [] ] ]
                ]
            ]
        ]


projectView : Html msg
projectView =
    div [ class "home-content" ]
        [ showCard "Work Experience Tracker App" "A social-media like application that allows students and teachers to collaborate about their work experiences in classes." "./assets/images/workexptracker.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "./assets/images/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "./assets/images/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "./assets/images/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "./assets/images/nixos.png"
        ]


navbar : Model -> Html Msg
navbar model =
    nav
        [ class "navbar"
        , id ("navbar-" ++ routeToString model.route)
        ]
        [ div [ class "navbar-logo" ]
            [ a [ href "/", class "logo-link" ] [ text "STEVE" ] ]
        , div
            [ class "navbar-links" ]
            [ colortoggleButton model.colormode
            , navLink model Home "Home"
            , navLink model Contact "Contact"
            , navLink model Blog "Blog"
            ]
        ]


navLink : Model -> Route -> String -> Html Msg
navLink model route label =
    a
        [ href (routeToHref route)
        , classList
            [ ( "nav-link", True )
            , ( "active-route", model.route == route )
            ]
        ]
        [ text label ]
