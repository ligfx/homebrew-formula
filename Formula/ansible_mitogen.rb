class AnsibleMitogen < Formula
  desc "A completely redesigned UNIX connection layer and module runtime for Ansible"
  homepage "https://mitogen.networkgenomics.com/"
  url "https://github.com/mitogen-hq/mitogen/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "691172eb9f9a3951c2a1756844fcec931bf0e80ae0a6e84ccd58158b8bbfd365"
  license "BSD-3-clause"

  keg_only "it only needs to be referenced by Ansible. To use Mitogen, add this to your .zshrc:\n\n  if test -e #{HOMEBREW_PREFIX}/opt/ansible_mitogen/libexec/ansible_mitogen/plugins/strategy; then\n      export ANSIBLE_STRATEGY_PLUGINS=#{HOMEBREW_PREFIX}/opt/ansible_mitogen/libexec/ansible_mitogen/plugins/strategy\n  fi\n\nor set\n\n  ANSIBLE_STRATEGY_PLUGINS=#{HOMEBREW_PREFIX}/opt/ansible_mitogen/libexec/ansible_mitogen/plugins/strategy\n\nbefore running ansible-playbook"

  depends_on "ansible@6"

  def install
    libexec.install Dir["*"]
  end
end

