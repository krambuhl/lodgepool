module Main exposing (main)

import Html exposing (Html, text)
import Html.Attributes exposing (classList)
import Html.Lazy exposing (lazy)
import Html.App as Html

import Components.Display.Button as Button


main : Html msg
main = 
  lazy Button.view 
    { attributes = Nothing
    , children = Just
      [ Button.view 
        { attributes = Just [ classList [("--mything", True)] ] 
        , children = Just [ text "Wahooy" ] } ] }

