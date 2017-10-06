
Pod::Spec.new do |s|
  s.name         = "AnalyticsKit"
  s.version      = "1.0.0"
  s.summary      = "A wrapper for adding analytics to an iOS app"
  s.license      = "MIT"
  s.author       = { "Taimur Ayaz" => "timonea.dev@gmail.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/TaimurAyaz/AnalyticsKit.git", :tag => "#{s.version}" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
end
