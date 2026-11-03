class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.2/agentmux-cli-0.3.2-darwin-arm64.tar.gz"
      sha256 "3b58b1229b94866530a72d8488167557c86cf21ecc528e6f48f06b65cad07a78"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.2/agentmux-cli-0.3.2-darwin-x64.tar.gz"
      sha256 "fef25fd9beaf0b4dd0f68ebb1cb7ca5be52257d9f0f8416c5ea88e2c2190af13"
    end
  end

  def install
    bin.install "agentmux"
  end

  def caveats
    <<~EOS
      Set up AgentMux (connects your agents and starts it at login):
        agentmux init
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/agentmux --version")
  end
end
