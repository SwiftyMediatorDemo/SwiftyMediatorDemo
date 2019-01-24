Pod::Spec.new do |s|

  s.name         = 'SwiftyMediatorDemo'
  s.version      = '0.1.0'
  s.summary      = 'SwiftyMediatorDemo.'

  s.description  = <<-DESC
                    this is SwiftyMediatorDemo
                   DESC

  s.homepage     = 'https://github.com/SwiftyMediatorDemo/SwiftyMediatorDemo'

  s.license      = { :type => 'MIT', :file => 'LICENSE' }

  s.author       = 'shayuan'

  s.platform     = :ios, '8.0'

  #  When using multiple platforms
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  # s.watchos.deployment_target = '2.0'
  # s.tvos.deployment_target = '9.0'

  s.source       = { :git => 'https://github.com/SwiftyMediatorDemo/SwiftyMediatorDemo.git', :tag => s.version.to_s }

  s.source_files = 'SwiftyMediatorDemo/Classes/**/*'

  #- 推荐这种 -#
  # s.resource_bundles = {
  #   'SwiftyMediatorDemo' => ['SwiftyMediatorDemo/Assets/**/*']
  # }

  # s.resources  = 'SwiftyMediatorDemo/**/*.{storyboard,xib}', 'SwiftyMediatorDemo/Assets/*'
  # s.resources = 'Resources/*.png'

  # s.preserve_paths = 'FilesToSave', 'MoreFilesToSave'

  # s.framework  = 'SomeFramework'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'

  # s.library   = 'iconv'
  # s.libraries = 'iconv', 'xml2'

  # s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(SDKROOT)/usr/include/libxml2' }
  # s.dependency 'AFNetworking'

end
