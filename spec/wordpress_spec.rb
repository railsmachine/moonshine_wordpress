require File.join(File.dirname(__FILE__), 'spec_helper.rb')

class WordpressManifest < Moonshine::Manifest::Rails
  plugin :wordpress
end

describe "A manifest with the Wordpress plugin" do
  
  before do
    @manifest = WordpressManifest.new
    @manifest.wordpress
  end
  
  it "should be executable" do
    @manifest.should be_executable
  end
  
  # don't want to uninstall worker-mpm
  it "should should install mod_fcgi before php" do
    @manifest.packages.select{|n,p| n =~ /.*php.*/}.each do |n,p| 
      p.require.to_s.should == "Package[libapache2-mod-fcgid]"
    end
  end
  
end