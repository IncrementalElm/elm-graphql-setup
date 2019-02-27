-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.AddCommentPayload exposing (clientMutationId, commentEdge, subject, timelineEdge)

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


{-| A unique identifier for the client performing the mutation.
-}
clientMutationId : SelectionSet (Maybe String) ElmGithub.Object.AddCommentPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The edge from the subject's comment connection.
-}
commentEdge : SelectionSet decodesTo ElmGithub.Object.IssueCommentEdge -> SelectionSet (Maybe decodesTo) ElmGithub.Object.AddCommentPayload
commentEdge object_ =
    Object.selectionForCompositeField "commentEdge" [] object_ (identity >> Decode.nullable)


{-| The subject
-}
subject : SelectionSet decodesTo ElmGithub.Interface.Node -> SelectionSet (Maybe decodesTo) ElmGithub.Object.AddCommentPayload
subject object_ =
    Object.selectionForCompositeField "subject" [] object_ (identity >> Decode.nullable)


{-| The edge from the subject's timeline connection.
-}
timelineEdge : SelectionSet decodesTo ElmGithub.Object.IssueTimelineItemEdge -> SelectionSet (Maybe decodesTo) ElmGithub.Object.AddCommentPayload
timelineEdge object_ =
    Object.selectionForCompositeField "timelineEdge" [] object_ (identity >> Decode.nullable)
