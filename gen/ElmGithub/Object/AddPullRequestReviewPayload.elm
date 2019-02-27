-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.AddPullRequestReviewPayload exposing (clientMutationId, pullRequestReview, reviewEdge)

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
clientMutationId : SelectionSet (Maybe String) ElmGithub.Object.AddPullRequestReviewPayload
clientMutationId =
    Object.selectionForField "(Maybe String)" "clientMutationId" [] (Decode.string |> Decode.nullable)


{-| The newly created pull request review.
-}
pullRequestReview : SelectionSet decodesTo ElmGithub.Object.PullRequestReview -> SelectionSet (Maybe decodesTo) ElmGithub.Object.AddPullRequestReviewPayload
pullRequestReview object_ =
    Object.selectionForCompositeField "pullRequestReview" [] object_ (identity >> Decode.nullable)


{-| The edge from the pull request's review connection.
-}
reviewEdge : SelectionSet decodesTo ElmGithub.Object.PullRequestReviewEdge -> SelectionSet (Maybe decodesTo) ElmGithub.Object.AddPullRequestReviewPayload
reviewEdge object_ =
    Object.selectionForCompositeField "reviewEdge" [] object_ (identity >> Decode.nullable)
