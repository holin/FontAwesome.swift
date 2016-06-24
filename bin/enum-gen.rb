#!/usr/bin/env ruby

lines  = File.open(File.expand_path("#{File.dirname(__FILE__)}/../FontAwesome/iconfont.css")).readlines
fonts = {}
lines.each do |line|
    # .icon-shouye:before { content: "\e601"; }
    if line =~ /.icon-(.+?):before { content: "\\(.+)"; }/
        fonts[$1] = $2
    end
end

lines = ["//Generate at #{Time.now}", ""]
lines << "public enum FontAwesome: String {"
fonts.each do |key, value|
    lines << %{\tcase #{key.capitalize} = "\\u{#{value}}"}
end
lines << ""

lines << %{\tpublic static func fromCode(code: String) -> FontAwesome? {
\t\tguard let raw = FontAwesomeIcons[code], icon = FontAwesome(rawValue: raw) else {
\t\t    return nil
\t\t}

\t\treturn icon
\t}}

lines << "}"

lines << ""

lines << "public let FontAwesomeIcons = ["

fonts.each do |key, value|
    lines << %{\t"icon-#{key}" : "\\u{#{value}}",}
end
lines << "]"

file = File.expand_path("#{File.dirname(__FILE__)}/../FontAwesome/Enum.swift")
File.open(file, "w"){|f| f.write lines.join("\n") }

puts "Write to #{file} at #{Time.now}"
