module Main exposing (main) -- -- where

import Html exposing (Html, text, div, node)
import Html.Attributes exposing (classList, rel, href)
import Html.Lazy exposing (lazy)
import Html.App as Html

import Components.Container.Menu as Menu


main : Html msg
main = 
  div 
    []
    [ node "link" [ rel "stylesheet", href "/dist/style.css" ] []
    , Menu.view
      [ classList [("--mything", True)] ] 
      [ text "Wahooy" ] ]

