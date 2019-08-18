module TrackingHelper
  def email_tracker_url email
    "http://localhost:3000/beacon?data=#{Base64.encode64(email)}"
  end
end
