class DeployCli < Formula
  desc "Deployment Methods without the mess"
  homepage "https://github.com/deploymentcli/deploy"
  version "0.0.1"
  if OS.mac?
    url "https://github.com/deploymentcli/deploy/releases/download/0.0.1/deploy-osx.tar.gz"
    sha256 "04dcd7f97ecf317e036a72c76c44ccb73b6c553dd7de055effe8f13753772f97"
  elsif OS.linux?
    url "https://github.com/deploymentcli/deploy/releases/download/0.0.1/deploy-linux.tar.gz"
    sha256 "04dcd7f97ecf317e036a72c76c44ccb73b6c553dd7de055effe8f13753772f97"
  end

  depends_on :arch => :x86_64

  def install
    bin.install "deploy"
  end
  
  test do
    system "#{bin}/deploy", "version"
  end

end
