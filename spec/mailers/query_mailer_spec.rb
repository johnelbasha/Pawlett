require "rails_helper"

RSpec.describe QueryMailer, type: :mailer do
  describe "new_query" do
    let(:mail) { QueryMailer.new_query }

    it "renders the headers" do
      expect(mail.subject).to eq("New query")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
