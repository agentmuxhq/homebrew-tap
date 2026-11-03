class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.1/agentmux-cli-0.3.1-darwin-arm64.tar.gz"
      sha256 "1ab8f3a832caeb0f0c33b194134b84bfb685272aa314f3066f6f8f673b471b8d"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.1/agentmux-cli-0.3.1-darwin-x64.tar.gz"
      sha256 "ca8b4f843e05cf3d6c2a6714427f8273abeda34069c182fc2c45547d75bf619e"
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
