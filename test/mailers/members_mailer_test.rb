require 'test_helper'

class MembersMailerTest < ActionMailer::TestCase
  test "new_message" do
    mail = MembersMailer.new_message
    assert_equal "New message", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
