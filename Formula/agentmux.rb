class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.2/agentmux-cli-1.0.2-darwin-arm64.tar.gz"
      sha256 "3d9d6e6d04b8a738a8c567504686ad58d51e3b5c12c3d4e5de6219b0af9a080f"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.2/agentmux-cli-1.0.2-darwin-x64.tar.gz"
      sha256 "929af55a029bd1b903ce4408839b40c914009e0d45c5fb8af9af4a2a19c68664"
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
