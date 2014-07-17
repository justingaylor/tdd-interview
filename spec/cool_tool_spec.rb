require File.join(File.dirname(__FILE__), 'spec_helper.rb')

describe RightScale::CoolTool do

  #############################################################################
   subject { RightScale::CoolTool }
   it 'is a Class' do
     expect(subject).to be_a(::Class)
   end
  #############################################################################

  #############################################################################
   let(:default_filepath) { '/var/log/cool_tool/cool_tool.log' }
   it 'provides a DEFAULT_FILEPATH constant' do
     expect(subject::DEFAULT_FILEPATH).to eq(default_filepath)
   end
  #############################################################################

  #############################################################################
  # TODO 4: Context 'initialize' (uncomment this block)
   context 'initialize' do
     it 'returns an object' do
       expect(subject.new).to_not be_nil
     end

     let(:filepath) { 'log/cool_tool.log' }
     it "allows optional filepath parameter"  do
       expect{ subject.new(filepath) }.to_not raise_error
     end
   end
  #############################################################################

  #############################################################################
  # TODO 5: Context #filepath (uncomment this block)
   context '#file_path' do
     it "returns correct filepath" do
       filepath = 'log/cool_tool.log'
       expect(subject.new(filepath).file_path).to eq(filepath)
     end

     it "returns correct, yet different, filepath" do
       other_filepath = 'log/cool_tool_other.log'
       expect(subject.new(other_filepath).file_path).to eq(other_filepath)
     end

     it "defaults to default filepath" do
       default_filepath = '/var/log/cool_tool/cool_tool.log'
       expect(subject.new.file_path).to eq(default_filepath)
     end

   end
  #############################################################################

  #############################################################################
  # TODO 6: Context '#expanded_file_path' (uncomment this block)
   context '#expanded_file_path' do
     it "returns correct and fully-qualified filepath" do
       filepath = 'log/cool_tool.log'
       expected_result = File.expand_path(File.join(File.dirname(__FILE__), '..', filepath))
       expect(subject.new(filepath).expanded_file_path).to eq(expected_result)
     end

     it "returns correct and fully-qualified default filepath" do
       expected_result = File.expand_path(File.join(default_filepath))
       expect(subject.new.expanded_file_path).to eq(expected_result)
     end
   end
  #############################################################################
  # BONUS 1: Convert DEFAULT_FILEPATH to an attr_accessor called default_filepath using TDD.
   context '#filepath_attr_accessor' do
     let(:new_filepath) { '/var/log/cool_tool/cool_tool2.log' }
     it 'provides a default_filepath attr_accessor that allows to write' do
       expect{ subject.default_filepath = new_filepath }.to_not raise_error
     end
     it 'provides a default_filepath attr_accessor that allows to retrieve past value' do
       expect( subject.default_filepath ).to eq(new_filepath)
     end
     it 'default_filepath is used as default filepath' do
       RightScale::CoolTool.default_filepath = new_filepath
       expect(subject.new.file_path).to eq(new_filepath)
     end
   end
  #############################################################################
  # BONUS 2: Raise an exception when filepath param to RightScale::CoolTool.new is not a String using TDD.
   context '#not_a_string' do
     it "raises exception when filepath param to RightScale::CoolTool.new is not a String"  do
       expect{ subject.new(42) }.to raise_error
     end
   end
 end
