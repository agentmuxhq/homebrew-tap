class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "0.3.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.4/agentmux-cli-0.3.4-darwin-arm64.tar.gz"
      sha256 "a44302ce389a8f21f24888a96cc6ece6fde91226a0c9130d5fad465433b61548"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.4/agentmux-cli-0.3.4-darwin-x64.tar.gz"
      sha256 "0b572af8499a220f7e8f98a9e218765e4a5ea0f760869a396c69e5becb0412aa"
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
