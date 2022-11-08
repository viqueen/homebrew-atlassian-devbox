require "language/node"

class AtlassianDevbox < Formula
  desc "Atlassian enterprise products development tools"
  homepage "https://viqueen.org/notes/atlassian-devbox/"
  url "https://registry.npmjs.org/atlassian-devbox/-/atlassian-devbox-2.0.0.tgz"
  sha256 "2df83ba8b22ec6efa8c2e35882af5c4410df00ac29781e543c683673a92f6e31"
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
