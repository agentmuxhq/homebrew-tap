class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "1.0.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.4/agentmux-cli-1.0.4-darwin-arm64.tar.gz"
      sha256 "353866e57ee1add9ef4317fd8f1c1693be18d3ac38425dfac98790b53da177e1"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.4/agentmux-cli-1.0.4-darwin-x64.tar.gz"
      sha256 "e4e167c581f718b8f6f3971eadc19a759fda7e53e3df575e2f5cd99d474176fa"
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
