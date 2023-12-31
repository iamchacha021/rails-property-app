require "spec_helper"

describe Fog::Brightbox::Compute::Config do
  describe "when required arguments are included" do
    it "nothing is raised" do
      settings = {
        brightbox_client_id: "cli-12345",
        brightbox_secret: "1234567890"
      }
      config = Fog::Brightbox::Config.new(settings)
      Fog::Brightbox::Compute::Config.new(config)
      pass
    end
  end

  describe "when client_id is not in configuration" do
    it "raises ArgumentError" do
      settings = {
        brightbox_secret: "1234567890"
      }
      config = Fog::Brightbox::Config.new(settings)
      assert_raises ArgumentError do
        Fog::Brightbox::Compute::Config.new(config)
      end
    end
  end

  describe "when client_secret is not in configuration" do
    it "raises ArgumentError" do
      settings = {
        brightbox_client_id: "cli-12345"
      }
      config = Fog::Brightbox::Config.new(settings)
      assert_raises ArgumentError do
        Fog::Brightbox::Compute::Config.new(config)
      end
    end
  end
end
