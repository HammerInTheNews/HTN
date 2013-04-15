require 'test_helper'

class HtnMailerTest < ActionMailer::TestCase
  test "htn_newsletter" do
    mail = HtnMailer.htn_newsletter
    assert_equal "Htn newsletter", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "welcome_email" do
    mail = HtnMailer.welcome_email
    assert_equal "Welcome email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "post" do
    mail = HtnMailer.post
    assert_equal "Post", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
