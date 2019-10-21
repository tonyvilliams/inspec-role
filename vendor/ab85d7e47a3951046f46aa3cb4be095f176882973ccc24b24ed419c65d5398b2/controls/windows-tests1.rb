control 'Testing only windows' do
  title 'Tests for windows'
  desc 'The following tests within this control will be used for client nodes.'
  describe file('/etc/passwd') do
    it { should exist }
  end
end

control 'check if ls exists' do
  title 'ls command'
  desc 'The following tests within this control will be used for client nodes.'
  describe file('/bin/ls') do
    it { should exist }
  end
end

control 'check if top exists' do
  title 'top command'
  desc 'The following tests within this control will be used for client nodes.'
  describe file('/usr/bin/top') do
    it { should exist }
  end
end

control 'check if free exists' do
  title 'free command'
  desc 'The following tests within this control will be used for client nodes.'
  describe file('/usr/bin/free') do
    it { should exist }
  end
end
