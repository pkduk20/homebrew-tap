# typed: false
# frozen_string_literal: true

class LiveServer < Formula
  desc "Single-binary local directory live server with real-time reload, syntax highlighting, markdown viewer, and HTTP Basic Auth"
  homepage "https://github.com/pkduk20/release"
  version "261126.16.43"

  on_macos do
    on_arm do
      url "https://github.com/pkduk20/release/releases/download/live-server-v261126.16.43/live-server-macos-arm64.tar.gz"
      sha256 "b8f5228e7887c3dbd0dca81614f1d33746e8218703ebd2d98d01aa3d82995b60"
    end
    on_intel do
      url "https://github.com/pkduk20/release/releases/download/live-server-v261126.16.43/live-server-macos-x86_64.tar.gz"
      sha256 "4e1b238f556ee31c223a8852f59db414d216ced353f091188fedd5f5bcbaa37e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pkduk20/release/releases/download/live-server-v261126.16.43/live-server-linux-arm64.tar.gz"
      sha256 "90bd15ba674c526f0ad179f4388565c489da9412103bec629479be3c4b886bfe"
    end
    on_intel do
      url "https://github.com/pkduk20/release/releases/download/live-server-v261126.16.43/live-server-linux-x86_64.tar.gz"
      sha256 "fb3f05f3ccf1268c1f2e49eaedd49e146507663cb0be071d9d4467b1ee0e4496"
    end
  end

  def install
    bin.install "live-server"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/live-server --version")
  end
end
