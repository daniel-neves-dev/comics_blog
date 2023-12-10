class Mutations::CreatePost < GraphQL::Schema::Mutation

  null  true

  argument :title, String, required: false
  argument :content, String, required: false

  def resolve(title:, content:)
    Post.create title: title, content: content
  end
end