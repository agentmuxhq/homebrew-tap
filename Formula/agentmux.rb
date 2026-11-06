class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "1.0.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.5/agentmux-cli-1.0.5-darwin-arm64.tar.gz"
      sha256 "7744f1d609b80382ac972c416766b1cb3b7c9770525d4b5abe605456c8d54def"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.5/agentmux-cli-1.0.5-darwin-x64.tar.gz"
      sha256 "beac144577ebdf45b2253c658a5d0ce5585499c51d3fad7f8c0b826d860420ab"
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
