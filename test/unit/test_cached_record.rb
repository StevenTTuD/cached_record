require File.expand_path("../../test_helper", __FILE__)

module Unit
  class TestCachedRecord < MiniTest::Unit::TestCase

    describe CachedRecord do
      it "has the current version" do
        version = "0.1.0"
        assert_equal version, CachedRecord::VERSION
        assert File.read(path "CHANGELOG.rdoc").include?("Version #{version}")
        assert File.read(path "VERSION").include?(version)
      end
    end

  end
end