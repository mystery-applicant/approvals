require 'spec_helper'

describe Approvals::Verifiers::YamlVerifier do
  subject(:instance) do
    described_class.new(received_path, approved_path)
  end

  context "with same yaml content but different formatting" do
    let(:received_path) do
      "./spec/fixtures/yaml/received.yaml"
    end
    let(:approved_path) do
      "./spec/fixtures/yaml/approved.yaml"
    end

    it "passes verification" do
      expect(instance.verify).to be(true)
    end
  end

  context "with different yaml content" do
    let(:received_path) do
      "./spec/fixtures/yaml/different_content.yaml"
    end
    let(:approved_path) do
      "./spec/fixtures/yaml/approved.yaml"
    end

    it "does not pass verification" do
      expect(instance.verify).to be(false)
    end
  end
end
