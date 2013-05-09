require File.expand_path('../support/helpers', __FILE__)

describe 'dbvm-cookbook::default' do

  include Helpers::Dbvm_cookbook

  # Example spec tests can be found at http://git.io/Fahwsw
  it 'adds the dbvm user' do
    user(node['dbvm']['user']).must_exist
  end

  it 'installs dbvm' do
    file("#{node['dbvm']['home']}/dbvm/scripts/dbvm_env.bash").must_exist.with(:owner, node['dbvm']['user']).with(:mode, "644")
  end

end
