class NitroCli@preview < Formula
  desc "ChilliCream Nitro Command Line"
  homepage "https://chillicream.com"
  version "16.1.0-p.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.10/nitro-osx-arm64.zip"
      sha256 "5896f249a0e5faa37b112edfd809bd21a914246faee6236c17373b019319f1aa"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.10/nitro-osx-x64.zip"
      sha256 "2d7f9b6ff2f9c26d9b18af0838ee50c0cf92e1555b83e2d21e33a4c638af85c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.10/nitro-linux-arm64.tar.gz"
      sha256 "30536d7b9007ab902bd941764cb92d990ee41b89d5626266bc76965bb587d422"
    end
    on_intel do
      url "https://github.com/ChilliCream/graphql-platform/releases/download/16.1.0-p.1.10/nitro-linux-x64.tar.gz"
      sha256 "e150cf514aebe7b9b026dc255a3132a2b35dabbb4681646b6e6ffe7fb80dc04a"
    end
  end

  def install
    bin.install "nitro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitro --version")
  end
end
