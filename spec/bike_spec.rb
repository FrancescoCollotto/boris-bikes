require "bike"

describe Bike do
  it { expect(subject).to respond_to :report_broken }
  # it { expect(subject.working?).to be(true).or be(false) }
  # it { expect(subject.working?).to be_in([true, false])}
  it { expect(subject.report_broken).to eq(true)}
end