Pod::Spec.new do |s|

s.platform = :ios
s.ios.deployment_target = '8.0'
s.name = "DPActivityIndicatorView"
s.summary = "Custom set of activity indicators for iOS."
s.requires_arc = true
s.version = "0.1.0"
s.license = { :type => "MIT", :file => "LICENSE" }
s.author = { "Dennis Pashkov" => "dennis.pashkov@icloud.com" }
s.homepage = "https://github.com/bigsnickers/DPActivityIndicatorView"
s.source = { :git => "https://github.com/bigsnickers/DPActivityIndicatorView.git", :tag => s.version }
s.source_files = "Source/**/*.{swift}"
s.requires_arc = true
s.resources = "Source/**/*.{png,xib}"

end