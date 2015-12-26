require 'spec_helper'

class SomeJsonController
  include JsonAnswerContract::Controller::Helper
end

describe JsonAnswerContract::Controller::Helper do
  subject { SomeJsonController.new }

  let(:data) { {cookies: []} }

  describe 'expands instance interface' do
    it { is_expected.to respond_to :success_json_response }
    it { is_expected.to respond_to :failure_json_response }
    it { is_expected.to respond_to :build_json_response }
  end

  describe '#success_json_response' do
    it 'calls building json response properly' do
      expect(subject).to receive(:build_json_response).with(true, data, 200)
      subject.success_json_response(data)
    end
  end

  describe '#failure_json_response' do
    it 'calls building json response properly' do
      expect(subject).to receive(:build_json_response).with(false, data, 500)
      subject.failure_json_response(data)
    end
  end

  describe '#build_json_response' do
    it 'calls `render` with proper params' do
      expect(subject).to receive(:render).with(json: {success: true, data: data}, status: 200)
      subject.build_json_response(true, data, 200)
    end
  end
end
