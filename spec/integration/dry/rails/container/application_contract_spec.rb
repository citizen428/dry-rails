# frozen_string_literal: true

RSpec.describe Dry::Rails::Core::ApplicationContract do
  context 'when the feature is enabled' do
    subject(:contract) do
      Class.new(Dummy::ApplicationContract) do
        schema do
          required(:name).filled(:string)
        end
      end.new
    end

    it 'preconfigures subclasses to use localized messages' do
      I18n.with_locale(:en) do
        expect(contract.(name: '').errors[:name])
          .to eql(['cannot be blank'])
      end
    end

    it 'enables all locales via I18n' do
      I18n.with_locale(:pl) do
        expect(contract.(name: '').errors[:name]).to eql(['nie może być puste'])
      end
    end
  end

  context 'when the feature is disabled' do
    before(:all) do
      Dry::Rails.container do
        config.features = []
      end
    end

    after(:all) do
      Dry::Rails.container do
        config.features = config.pristine.features
      end
    end

    it 'does not define the contract class' do
      expect(Dummy.const_defined?(:ApplicationContract)).to be(false)
    end
  end
end
