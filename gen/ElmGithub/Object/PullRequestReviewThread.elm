-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module ElmGithub.Object.PullRequestReviewThread exposing (CommentsOptionalArguments, comments, id, pullRequest, repository)

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


type alias CommentsOptionalArguments =
    { after : OptionalArgument String
    , before : OptionalArgument String
    , first : OptionalArgument Int
    , last : OptionalArgument Int
    }


{-| A list of pull request comments associated with the thread.

  - after - Returns the elements in the list that come after the specified cursor.
  - before - Returns the elements in the list that come before the specified cursor.
  - first - Returns the first _n_ elements from the list.
  - last - Returns the last _n_ elements from the list.

-}
comments : (CommentsOptionalArguments -> CommentsOptionalArguments) -> SelectionSet decodesTo ElmGithub.Object.PullRequestReviewCommentConnection -> SelectionSet decodesTo ElmGithub.Object.PullRequestReviewThread
comments fillInOptionals object_ =
    let
        filledInOptionals =
            fillInOptionals { after = Absent, before = Absent, first = Absent, last = Absent }

        optionalArgs =
            [ Argument.optional "after" filledInOptionals.after Encode.string, Argument.optional "before" filledInOptionals.before Encode.string, Argument.optional "first" filledInOptionals.first Encode.int, Argument.optional "last" filledInOptionals.last Encode.int ]
                |> List.filterMap identity
    in
    Object.selectionForCompositeField "comments" optionalArgs object_ identity


{-| -}
id : SelectionSet ElmGithub.ScalarCodecs.Id ElmGithub.Object.PullRequestReviewThread
id =
    Object.selectionForField "ScalarCodecs.Id" "id" [] (ElmGithub.ScalarCodecs.codecs |> ElmGithub.Scalar.unwrapCodecs |> .codecId |> .decoder)


{-| Identifies the pull request associated with this thread.
-}
pullRequest : SelectionSet decodesTo ElmGithub.Object.PullRequest -> SelectionSet decodesTo ElmGithub.Object.PullRequestReviewThread
pullRequest object_ =
    Object.selectionForCompositeField "pullRequest" [] object_ identity


{-| Identifies the repository associated with this thread.
-}
repository : SelectionSet decodesTo ElmGithub.Object.Repository -> SelectionSet decodesTo ElmGithub.Object.PullRequestReviewThread
repository object_ =
    Object.selectionForCompositeField "repository" [] object_ identity
