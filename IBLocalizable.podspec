Pod::Spec.new do |s|

  s.name         = "IBLocalizable"
  s.version      = "1.3.1"
  s.summary      = "Localize your views from Interface Builder"
  s.description  = <<-DESC
  Localize your views from Interface Builder easily, written in Swift
  DESC

  s.homepage     = "https://github.com/PiXeL16/IBLocalizable"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Chris Jimenez" => "cjimenez16@gmail.com" }
  s.social_media_url   = "http://twitter.com/chrisjimeneznat"

  s.platform     = :ios, "10.0"

  s.source       = { :git => "https://github.com/PiXeL16/IBLocalizable.git", :tag => s.version }
  s.source_files  = "IBLocalizable/", "IBLocalizable/**/*.{h,m,swift}"

  s.requires_arc = true

end
