#  Be sure to run `pod spec lint MiniShop.Shared.podspec'
Pod::Spec.new do |s|
  s.name = "MiniShop.Shared"
  s.version = "0.0.1"
  s.summary = "Given pod provides very basic shared entities for MiniShop project"
  s.description = <<-DESC 
  So at the moment MiniShop.Shared pod contains Product entity, which is used in several other frameworks. As well as general formatters and protocols
                   DESC
  s.homepage = "https://github.com/alounce"
  s.license = { :type => "MIT", :file => "LICENSE.txt" }
  s.author = { "Oleksandr Karpenko" => "oleksandr.karpenko@vivint.com" }
  s.social_media_url = "http://twitter.com/alounce"
  s.platform = :ios, "11.0"
  #s.source       = { :path => '.' }
  s.source = { :git => "https://github.com/alounce/MiniShop.Shared.Module.git", :tag => "#{s.version}" }
  s.source_files = "Shared", "Shared/**/*.{h,m,swift}"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4' }
  s.swift_version = "4"
end
