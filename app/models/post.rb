class Post < ApplicationRecord
  has_many :comments, dependent: :destroy

  broadcasts_to ->(post) { :posts }

  after_update_commit :update_show

  private

  def update_show
    broadcast_replace_to([self, :view], target: self, partial: 'posts/show')
  end
end
