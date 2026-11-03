class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.0/agentmux-cli-0.3.0-darwin-arm64.tar.gz"
      sha256 "c31e3184b8358a53f977d8ad3b7fbece1729ce29cf21e6c1027127945c6175f7"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.0/agentmux-cli-0.3.0-darwin-x64.tar.gz"
      sha256 "2c4207adfda15670083d4366f7e9121b8a8a04dd641d1cb76e4565610f909f4c"
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
