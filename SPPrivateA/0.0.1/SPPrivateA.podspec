#
#  Be sure to run `pod spec lint SPPrivateA.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.

Pod::Spec.new do |s|
  s.name         = "SPPrivateA"
  s.version      = "0.0.1"
  s.summary      = "just for private pod spec demo of SPPrivateA."
  s.description  = <<-DESC
  just for private pod spec demo of SPPrivateA, by this, you can know how to set up a private pod spec 
                   DESC

  s.homepage     = "https://github.com/quqianqian/SPPrivateA"
  s.license      = "MIT"
  s.author       = { "wuqianqian" => "2844057518@qq.com" }
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/quqianqian/SPPrivateA.git", :tag => "#{s.version}" }
  s.source_files  = "#{s.name}/**/*.{h,m}"
  #s.exclude_files = "#{s.name}/Exclude"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  # s.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
