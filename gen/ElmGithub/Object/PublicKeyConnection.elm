-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.PublicKeyConnection exposing (edges, nodes, pageInfo, totalCount)

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


{-| A list of edges.
-}
edges : SelectionSet decodesTo ElmGithub.Object.PublicKeyEdge -> SelectionSet (Maybe (List (Maybe decodesTo))) ElmGithub.Object.PublicKeyConnection
edges object_ =
    Object.selectionForCompositeField "edges" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| A list of nodes.
-}
nodes : SelectionSet decodesTo ElmGithub.Object.PublicKey -> SelectionSet (Maybe (List (Maybe decodesTo))) ElmGithub.Object.PublicKeyConnection
nodes object_ =
    Object.selectionForCompositeField "nodes" [] object_ (identity >> Decode.nullable >> Decode.list >> Decode.nullable)


{-| Information to aid in pagination.
-}
pageInfo : SelectionSet decodesTo ElmGithub.Object.PageInfo -> SelectionSet decodesTo ElmGithub.Object.PublicKeyConnection
pageInfo object_ =
    Object.selectionForCompositeField "pageInfo" [] object_ identity


{-| Identifies the total count of items in the connection.
-}
totalCount : SelectionSet Int ElmGithub.Object.PublicKeyConnection
totalCount =
    Object.selectionForField "Int" "totalCount" [] Decode.int
