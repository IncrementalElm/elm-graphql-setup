-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.DeployedEvent exposing (actor, createdAt, databaseId, deployment, id, pullRequest, ref)

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


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo ElmGithub.Interface.Actor -> SelectionSet (Maybe decodesTo) ElmGithub.Object.DeployedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet ElmGithub.ScalarCodecs.DateTime ElmGithub.Object.DeployedEvent
createdAt =
    Object.selectionForField "ScalarCodecs.DateTime" "createdAt" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecDateTime |> .decoder)


{-| Identifies the primary key from the database.
-}
databaseId : SelectionSet (Maybe Int) ElmGithub.Object.DeployedEvent
databaseId =
    Object.selectionForField "(Maybe Int)" "databaseId" [] (Decode.int |> Decode.nullable)


{-| The deployment associated with the 'deployed' event.
-}
deployment : SelectionSet decodesTo ElmGithub.Object.Deployment -> SelectionSet decodesTo ElmGithub.Object.DeployedEvent
deployment object_ =
    Object.selectionForCompositeField "deployment" [] object_ identity


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.DeployedEvent
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| PullRequest referenced by event.
-}
pullRequest : SelectionSet decodesTo ElmGithub.Object.PullRequest -> SelectionSet decodesTo ElmGithub.Object.DeployedEvent
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| The ref associated with the 'deployed' event.
-}
ref : SelectionSet decodesTo ElmGithub.Object.Ref -> SelectionSet (Maybe decodesTo) ElmGithub.Object.DeployedEvent
ref object_ =
    Object.selectionForCompositeField "ref" [] object_ (identity >> Decode.nullable)
