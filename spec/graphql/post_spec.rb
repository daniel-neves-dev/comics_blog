require 'rails_helper'

RSpec.describe Types::PostType, type: :graphql_type do
  subject(:type) { described_class.new(post, {}) }

  let(:post) { create(:post) }

  it { is_expected.to have_graphql_fields(:post_id, :post_title, :post_content) }

  it 'returns the correct value for post_id' do
    expect(type.post_id).to eq(post.id)
  end

  it 'returns the correct value for post_title' do
    expect(type.post_title).to eq(post.title)
  end

  it 'returns the correct value for post_content' do
    expect(type.post_content).to eq(post.content)
  end
end