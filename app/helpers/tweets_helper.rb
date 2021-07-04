module TweetsHelper
  def display_errors(tweet)
    return unless tweet.errors.full_messages.any?

    content_tag :p, "Tweet could not be saved. #{tweet.errors.full_messages.join('. ')}", class: 'errors'
  end
end
