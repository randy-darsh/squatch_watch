require 'rails_helper'

describe User do
  it "creates or updates itself from an oauth hash" do
    auth = {
      provider: "google",
      uid: "12345678910",
      info: {
        email: "rspringer47@gmail.com",
        first_name: "Randy",
        last_name: "Springer"
      },
      credentials: {
        token: "abcdefg12345",
        refresh_token: "12345abcdefg",
        expires_at: DateTime.now
      }
    }
    User.update_or_create(auth)
    new_user = User.first

    expect(new_user.provider).to eq("google")
    expect(new_user.uid).to eq("12345678910")
    expect(new_user.email).to eq("rspringer47@gmail.com")
    expect(new_user.first_name).to eq("Randy")
    expect(new_user.last_name).to eq("Springer")
    expect(new_user.token).to eq("abcdefg12345")
    expect(new_user.refresh_token).to eq("12345abcdefg")
  end
end
