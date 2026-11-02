class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.2.4/agentmux-cli-0.2.4-darwin-arm64.tar.gz"
      sha256 "3f3141f2a475514b528a71b953f1174d2c5ba14f5269f5385eb3d8d3786c2a60"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.2.4/agentmux-cli-0.2.4-darwin-x64.tar.gz"
      sha256 "f4b5880c89551b994ff134c6de35cc6613d07208f16124c79a988d7d7aed2b99"
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
