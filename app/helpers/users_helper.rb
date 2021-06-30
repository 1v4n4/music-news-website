module UsersHelper
  # rubocop: disable Lint/Void
  def name_error
    @user.errors.full_messages_for(:name).each do |msg|
      msg
    end
  end
end
# rubocop: enable Lint/Void
