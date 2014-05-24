require 'spec_helper'

describe WorkType do
  before { @worktype = WorkType.new( name: 'Video', description: 'Vimeo video' ) }
  subject { @worktype }

  it { should respond_to :name }
  it { should respond_to :description }

  context 'when name is blank' do
    before { @worktype.name = ' ' }

    it { should_not be_valid }
  end

  context 'when description is blank do' do
    before { @worktype.description = ' ' }

    it { should_not be_valid }
  end
end
