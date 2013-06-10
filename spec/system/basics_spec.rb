require 'spec_helper_system'

describe 'basics' do
  # Here we use the 'shell' helper as a subject
  context shell 'cat /etc/hosts' do
    its(:stdout) { should =~ /localhost/ }
    its(:stderr) { should be_empty }
    its(:exit_code) { should be_zero }
  end

  it 'should cat /etc/resolv.conf' do
    # Here we run the shell command as a helper
    shell 'cat /etc/hosts' do |r|
      r.stdout.should =~ /localhost/
      r.stderr.should be_empty
      r.exit_code.should be_zero
    end
  end
end
