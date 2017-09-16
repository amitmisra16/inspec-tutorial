control "world-1.0" do
  impact 1.0
  title "Hello World"
  desc "Text should include the words 'Hello World'."
  describe file ('hello.txt') do
    # check if the file exists
    it { should exist }
    # It should be a file
    it { should be_file }
    # and not a directory
    it { should_not be_directory }
    # check the file content in case you are looking for specific text
    its ('content') { should match 'Hello World' }
  end
end
