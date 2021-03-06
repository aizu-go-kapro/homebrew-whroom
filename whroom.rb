HOMEBREW_WHROOM_VERSION="0.1.1"
class Whroom < Formula
  desc "Whroom: Which room are you at?"
  homepage "https://github.com/aizu-go-kapro/whroom"

  if OS.mac?
    url "https://github.com/aizu-go-kapro/whroom/releases/download/#{HOMEBREW_WHROOM_VERSION}/whroom_darwin_amd64.tar.gz"
  elsif OS.linux?
    url "https://github.com/aizu-go-kapro/whroom/releases/download/#{HOMEBREW_WHROOM_VERSION}/whroom_darwin_amd64.tar.gz"
  end

  version HOMEBREW_WHROOM_VERSION

  def install
    bin.install "whroom"
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>KeepAlive</key>
      <true/>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/whroom</string>
        <string>watch</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
    </dict>
    </plist>
  EOS
  end
end
