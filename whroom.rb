class Whroom < Formula
  desc "Whroom: Which room are you at?"
  homepage "https://github.com/aizu-go-kapro/whroom"
  url "https://github.com/aizu-go-kapro/releases/download/0.1.0/whroom_darwin_amd64.tar.gz"
  version "0.1.0"

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
