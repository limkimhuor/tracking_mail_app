class TrackingController < ApplicationController
  def beacon
    email = Base64.decode64 params[:data]

    EmailOpen.find_or_create_by(email: email) do |e|
      e.ip = request.ip
    end

    send_file "public/beacon.png", type: "image/png"
  end
end
