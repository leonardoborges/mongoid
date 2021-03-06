require "spec_helper"

describe Mongoid::Commands::Delete do

  describe "#execute" do

    before do
      @collection = mock
      @document = stub(:collection => @collection, :id => "1")
    end

    it "removes the document from its collection" do
      @collection.expects(:remove).with({ :_id => @document.id })
      Mongoid::Commands::Delete.execute(@document)
    end

  end

end
