module Components exposing (..)

import Css exposing (Color, display, hex, inlineBlock, margin, rem, rgb)
import Html.Styled exposing (Html, a, button, div, h1, h3, img, nav, p, text)
import Html.Styled.Attributes exposing (alt, class, css, height, href, src, width)



-- Primitives


theme : { secondary : Color, primary : Color }
theme =
    { primary = hex "55af6a"
    , secondary = rgb 250 240 230
    }


card : Html msg -> Html msg -> Html msg -> Html msg
card header content footer =
    div
        [ class "container"
        , css
            [ display inlineBlock
            , margin (rem 1)
            ]
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



-- Drop-in Components


heroCard : Html msg
heroCard =
    div [ class "hero-content" ]
        [ div [ class "hero-header" ]
            [ h1 [ class "hero-title" ] [ text "Hi, I’m Steve Mathew Joy, a student software developer" ]
            , div [ class "hero-location" ]
                [ img [ src "../public/images/map-pin-alt.svg", alt "Location", class "location-icon", width 30, height 30 ] []
                , text "Brisbane, Australia"
                ]
            ]
        , div [ class "hero-buttons" ]
            [ button [ class "hero-button contact-button" ] [ a [ href "#", class "social-link" ] [ text "Contact Me" ] ]
            , div [ class "hero-social-links" ]
                [ button [ class "hero-button" ] [ a [ href "#", class "social-link github" ] [ img [ src "../public/icons/github.svg", alt "github" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link facebook" ] [ img [ src "../public/icons/facebook.svg", alt "facebook" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link instagram" ] [ img [ src "../public/icons/instagram.svg", alt "instagram" ] [] ] ]
                , button [ class "hero-button" ] [ a [ href "#", class "social-link linkedin" ] [ img [ src "../public/icons/linkedin.svg", alt "linkedin" ] [] ] ]
                ]
            ]
        ]


projectView : Html msg
projectView =
    div [ class "home-content" ]
        [ showCard "Work Experience Tracker App" "A social-media like application that allows students and teachers to collaborate about their work experiences in classes." "../public/images/workexptracker.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "../public/images/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "../public/images/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "../public/images/nixos.png"
        , showCard "NixOS Desktop Configuration" "A declarative configuration written in Nix for multiple systems" "../public/images/nixos.png"
        ]


navbar : Html msg
navbar =
    nav [ class "navbar" ]
        [ div [ class "navbar-logo" ]
            [ a [ href "#", class "logo-link" ] [ text "STEVE" ] ]
        , div [ class "navbar-links" ]
            [ a [ href "#", class "nav-link active" ] [ text "Home" ]
            , a [ href "#", class "nav-link" ] [ text "Contact" ]
            , a [ href "#", class "nav-link" ] [ text "Blog" ]
            ]
        ]
