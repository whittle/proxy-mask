require 'spec_helper'

describe BasicObject, 'instance' do
  it 'has none of the usual methods' do
    assert_raise NoMethodError do
      BasicObject.new.freeze
    end
  end
end
