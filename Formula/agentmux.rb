class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.0/agentmux-cli-1.0.0-darwin-arm64.tar.gz"
      sha256 "dd739d6ceefc22c5c24b839a8309e9e83a5adfb6488da9ae941847eb393920cb"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.0/agentmux-cli-1.0.0-darwin-x64.tar.gz"
      sha256 "cbcd9d3b6b0c3faa16acb90830caf95adbc2bb7efcc70530b6189e37c3cd6a2f"
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
