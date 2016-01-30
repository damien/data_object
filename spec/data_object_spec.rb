require 'spec_helper'

describe DataObject do
  it 'has a version number' do
    expect(DataObject::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
