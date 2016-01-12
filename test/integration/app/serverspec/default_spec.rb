require 'serverspec'

set :backend, :exec

describe "golang" do

  it "is installed" do
    expect(package('golang')).to be_installed
  end

end

describe file('/var/www') do
  it { should be_directory }
  it { should be_mode 755 }
  it { should be_owned_by 'sample' }
  it { should be_grouped_into 'sample' }
end


describe file('/var/log/sample') do
  it { should be_directory }
  it { should be_mode 755 }
  it { should be_owned_by 'sample' }
  it { should be_grouped_into 'sample' }
end
