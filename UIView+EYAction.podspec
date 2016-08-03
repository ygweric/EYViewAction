Pod::Spec.new do |spec|
  spec.name         = 'UIView+EYAction'
  spec.version      = '1.0'
  spec.license      = { :type => 'Apache 2.0' }
  spec.homepage     = 'https://github.com/ygweric/UIView-EYAction'
  spec.authors      = { 'Eric Yang' => 'ygweric@gmail.com' }
  spec.summary      = 'Add action to UIView, just like UIButton'
  spec.source       = { :git => 'https://github.com/ygweric/UIView-EYAction.git', :tag => 'v1.0' }
  spec.source_files = 'UIView+EYAction/*'
  spec.requires_arc = 'true'
  spec.platform     = :ios, '6.0'
end