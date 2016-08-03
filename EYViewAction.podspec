Pod::Spec.new do |spec|
  spec.name         = 'EYViewAction'
  spec.version      = '1.0.2'
  spec.license      = { :type => 'Apache 2.0' }
  spec.homepage     = 'https://github.com/ygweric/EYViewAction'
  spec.authors      = { 'Eric Yang' => 'ygweric@gmail.com' }
  spec.summary      = 'Add action to UIView, just like UIButton'
  spec.source       = { :git => 'https://github.com/ygweric/EYViewAction.git', :tag => '1.0.2' }
  spec.source_files = 'EYViewAction/*'
  spec.requires_arc = 'true'
  spec.platform     = :ios, '6.0'
end