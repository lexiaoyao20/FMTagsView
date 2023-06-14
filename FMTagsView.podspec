Pod::Spec.new do |s|
  s.name         = 'FMTagsView'
  s.summary      = '一个基于UICollectionView的标签展示控件 .'
  s.version      = '0.1.7'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Subo' => '455295813@qq.com' }
  s.social_media_url = 'https://github.com/lexiaoyao20'
  s.homepage     = 'https://github.com/lexiaoyao20/FMTagsView'
  s.platform     = :ios, '7.0'
  s.ios.deployment_target = '7.0'
  s.source       = { :git => 'https://github.com/lexiaoyao20/FMTagsView.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.source_files = 'FMTagsView/TagsView/**/*.{h,m}'
  s.public_header_files = 'FMTagsView/TagsView/**/*.{h}'
  
  s.framework = 'UIKit'

end