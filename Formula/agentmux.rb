class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.3/agentmux-cli-1.0.3-darwin-arm64.tar.gz"
      sha256 "11d1916a47ea8290f8f8a891eb014747fdf5972fd6b6e047c48274406d7019f8"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.3/agentmux-cli-1.0.3-darwin-x64.tar.gz"
      sha256 "c65a1c1754a7813106001edefdda95f28d57347b18b7c3e49a2069866395fd0e"
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
