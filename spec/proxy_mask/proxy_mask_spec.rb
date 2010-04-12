require 'spec_helper'

describe ProxyMask do
  
  before do
    @masked = mock('masked')
    ProxyMask.new(:Mask)
  end
  
  after do
    Object.send(:remove_const, :Mask)
  end
  
  it 'creates a proxy mask class with the constant given' do
    assert_equal(Class, Mask.class)
    @mask = Mask.new(@masked)
    assert_equal(Mask, @mask.class)
  end
  
  it 'accepts attributes at object creation' do
    @mask = Mask.new(@masked, :foo => :bar, :baz => :foo)
    @masked.should_not_receive(:foo)
    @masked.should_not_receive(:baz)
    @mask.foo.should == :bar
    @mask.baz.should == :foo
  end
  
  describe 'instance' do
    
    before do
      @mask = Mask.new(@masked)
    end
    
    it 'proxies calls to the object it’s initialized with' do
      @masked.should_receive :bar
      @mask.bar
    end
    
    it 'proxies arguments on calls to its masked instance' do
      @masked.should_receive(:foo).with(:bar, :baz)
      @mask.foo(:bar, :baz)
    end
    
    it 'proxies blocks passed to calls to its masked instance' do
      @masked.should_receive(:foo).with(:bar).and_yield(:baz)
      @mask.foo(:bar) { |s| s.should == :baz }
    end
    
    it 'proxies calls that would normally be inherited' do
      @masked.should_receive(:freeze)
      @mask.freeze
    end
    
  end
  
end
