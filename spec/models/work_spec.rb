require 'spec_helper'

describe Work do
  before { @work = Work.new() }
  subject { @work }

  it { should respond_to :work_type_id }
  it { should respond_to :title }
  it { should respond_to :url }
  it { should respond_to :thumbnail }
  it { should respond_to :date_created }
end
