# for rspec-puppet documentation - see http://rspec-puppet.com/tutorial/
require_relative '../spec_helper'

describe 'createuser' do
context 'The file should present' do
   it {
        should contain_file('/etc/passwd')
   }

end
context 'Checking for user, gid,shell and /home/nitink' do	
      it { should contain_user('nitink').with(
	:gid    => '9008',
  	:shell  => '/bin/bash',
  	:home   => '/home/nitink'
         )
}
end
end
