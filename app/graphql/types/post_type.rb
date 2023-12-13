# frozen_string_literal: true

module Types
  class PostType < Types::BaseObject

    description "One post"

    field :id, ID, null: false
    field :title, String
    field :content, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end

  class PostInputType < GraphQL::Schema::InputObject
    graphql_name "PostInputType"
    description 'All attributes to create a post'

    argument :title, String, required: false
    argument :content, String, required: false
  end
end
