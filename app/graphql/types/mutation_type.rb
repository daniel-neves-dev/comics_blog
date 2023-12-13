module Types
  class MutationType < Types::BaseObject
    field :create_post, Types::PostType, mutation: Mutations::CreatePost

    field :update_post, Boolean, null: false, description: 'update a post' do
      argument :post, Types::PostInputType, required: true
    end

    field :delete_post, Boolean, null: false, description: 'delete a post' do
      argument :id, ID, required: true
    end

    def update_post(post:)
      existing = Post.where(id: post[:id]).first
      existing&.update post.to_h
    end

    def delete_post(id:)
      Post.where(id: id).destroy_all
      true
    end


  end
end
