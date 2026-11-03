class Agentmux < Formula
  desc "Let your AI agents message each other: local MCP server for agent-to-agent asks"
  homepage "https://agentmux.dev"
  version "0.3.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.3/agentmux-cli-0.3.3-darwin-arm64.tar.gz"
      sha256 "8d61afd0c1798e2194f701acc43f4218338fe114fc88be9f6934d3b6ba91bf04"
    end
    on_intel do
      url "https://github.com/agentmuxhq/agentmux-mcp/releases/download/v0.3.3/agentmux-cli-0.3.3-darwin-x64.tar.gz"
      sha256 "d1f24e9f5a86882d66236baedd497f291b424ab4205bb28850b64aec0be5f98c"
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
