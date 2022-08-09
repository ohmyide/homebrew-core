class Ds < Formula
    desc "❤️ A Tiny, Static, Full-text Search with Rust"
    homepage "https://github.com/ohmyide/deep-search"
    url "https://github.com/ohmyide/deep-search/archive/refs/tags/v0.0.3.tar.gz"
    sha256 "fdc576be340e80f9f0c28fbc4f6add86e6626df54adb47c8caab41be716de2e7"
    head "https://github.com/ohmyide/deep-search.git", branch: "main"
    license "MIT"
    version "0.0.1"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      (testpath/"Hello.txt").write("Hello World!")
      system "#{bin}/ds", "Hello"
    end
  end
  