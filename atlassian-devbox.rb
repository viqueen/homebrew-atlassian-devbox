require "language/node"

class AtlassianDevbox < Formula
  desc "Atlassian enterprise products development tools"
  homepage "https://viqueen.org/notes/atlassian-devbox/"
  url "https://registry.npmjs.org/atlassian-devbox/-/atlassian-devbox-2.2.0.tgz"
  sha256 "e5dda4e0c4f9c64a3cd26f163a5aa72dd4bbc29aab5775e75523f13379435bb9"
  license "Apache-2.0"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "false"
  end
end
