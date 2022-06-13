class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :short_content, :tags
  belongs_to :author

  def short_content
    "#{self.object.content[0...40]}..."
  end
end
