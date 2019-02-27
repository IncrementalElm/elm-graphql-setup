-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.Author exposing (name, packages)

import ElmGithub.InputObject
import ElmGithub.Interface
import ElmGithub.Object
import ElmGithub.Scalar
import ElmGithub.ScalarCodecs
import ElmGithub.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


name : SelectionSet String ElmGithub.Object.Author
name =
    Object.selectionForField "String" "name" [] Decode.string


packages : SelectionSet decodesTo ElmGithub.Object.Package -> SelectionSet (List decodesTo) ElmGithub.Object.Author
packages object_ =
    Object.selectionForCompositeField "packages" [] object_ (identity >> Decode.list)
