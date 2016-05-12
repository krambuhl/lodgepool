module Components.Utils exposing (Options, mergeAttributes)

import Html exposing (Html, Attribute, a, text)


type alias Options msg = 
  { attributes: Maybe (List (Attribute msg))
  , children: Maybe (List (Html msg)) }


mergeAttributes : List a -> List a -> List a
mergeAttributes attrs bttrs = attrs