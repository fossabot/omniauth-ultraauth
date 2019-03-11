require 'spec_helper'

RSpec.describe OmniAuth::Strategies::UltraAuth do
  def app
    lambda do |_env|
      [200, {}, []]
    end
  end

  subject { OmniAuth::Strategies::UltraAuth.new(app, 'identifier', 'secret') }

  describe 'options' do
    it 'should have identifier' do
      expect(subject.options.identifier).to eq 'identifier'
    end

    it 'should have secret' do
      expect(subject.options.secret).to eq 'secret'
    end

    it 'should have name' do
      expect(subject.options.name).to eq 'ultraauth'
    end

    it 'should have scope' do
      expect(subject.options.scope).to eq [:openid]
    end

    it 'should have discovery' do
      expect(subject.options.discovery).to eq 'true'
    end

    it 'shoould have response_type' do
      expect(subject.options.response_type).to eq :code
    end

    it 'shoould have issuer' do
      expect(subject.options.issuer).to eq 'https://srv.qryp.to/op'
    end

    it 'shoould have client_auth_method' do
      expect(subject.options.client_auth_method).to eq :basic
    end
  end

  describe 'client options' do
  end
end
