require 'test/unit'
require_relative 'spec'

class TestDescribe < Test::Unit::TestCase
  def test_that_it_is_running
    assert_output("ee") do
     describe 'some thing' do      
      it 'has some property' do
        print "ee"
      end
     end
    end
  end  
end

class TestAssertion < Test::Unit::TestCase
  def test_that_it_passes
    2.should == 2
  end

  def test_that_it_fails
    assert_raises(ExpectationNotMet) do
      2.should == 4
    end
  end
end

#describe 'some thing' do
#  it 'has some property' do
#    MyClass.new.property.should == 5
#  end
#end
