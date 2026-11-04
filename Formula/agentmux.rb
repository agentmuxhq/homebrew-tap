class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "1.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.1/agentmux-cli-1.0.1-darwin-arm64.tar.gz"
      sha256 "5f055e21e4701a1d04d06d27cdf705bbb589df392c932c64a8c63881f55a198d"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v1.0.1/agentmux-cli-1.0.1-darwin-x64.tar.gz"
      sha256 "875ea6bc301b381556a5790a8d9bac16b1884fa860e65afc29dcdedf8f5b3145"
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
