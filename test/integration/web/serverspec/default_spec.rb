require 'serverspec'

set :backend, :exec

describe "nginx" do

  it "is installed" do
    expect(package('nginx')).to be_installed
  end

  it "is listening on port 80" do
    expect(port(80)).to be_listening
  end

  it "has a running service" do
    expect(service("nginx")).to be_running
  end

end
