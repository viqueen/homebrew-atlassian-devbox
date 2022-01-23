require "language/node"

class AtlassianDevbox < Formula
  desc "Atlassian enterprise products development tools"
  homepage "https://viqueen.org/notes/atlassian-devbox/"
  url "https://registry.npmjs.org/atlassian-devbox/-/atlassian-devbox-1.0.1.tgz"
  sha256 "52b4523b3b03ca70270801bcf2dfd6a73fc8d8d86124e32687e918a0e9585e54"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    system "npm", "run", "postinstall"
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
