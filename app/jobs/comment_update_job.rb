class CommentUpdateJob < ApplicationJob
  queue_as :default

  def perform(comment, current_user)
    ProductChannel.broadcast_to comment.product.id, comment: CommentsController.render(partial: 'comments/comment', locals: {comment: comment, current_user: current_user })
  end

  private

  def render_comment(comment, current_user)
    CommentsController.render(partial: 'comments/comment', locals: {comment: comment, current_user: current_user })
  end
  
end
