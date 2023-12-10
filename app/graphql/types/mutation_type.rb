module Types
  class MutationType < Types::BaseObject
    field :create_post, Types::PostType, mutation: Mutations::CreatePost
  end
end
