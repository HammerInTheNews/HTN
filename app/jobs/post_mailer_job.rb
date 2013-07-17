class PostMailerJob
  include SuckerPunch::Job

  def perform(fans, post)
    fans.each do |fan|
      HtnMailer.htn_newsletter(fan, post).deliver
    end
  end
end