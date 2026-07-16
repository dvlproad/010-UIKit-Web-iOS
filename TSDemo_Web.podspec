	#验证方法1：pod lib lint TSDemo_Web.podspec --sources='https://github.com/CocoaPods/Specs.git,https://gitee.com/dvlproad/dvlproadSpecs' --allow-warnings --use-libraries --verbose
  #验证方法2：pod lib lint TSDemo_Web.podspec --sources=cocoapods,gitee-dvlproad-dvlproadspecs --allow-warnings --use-libraries --verbose
  #提交方法： pod repo push gitee-dvlproad-dvlproadspecs TSDemo_Web.podspec --sources=cocoapods,gitee-dvlproad-dvlproadspecs --allow-warnings --use-libraries --verbose
Pod::Spec.new do |s|
  s.name         = "TSDemo_Web"
  s.version      = "0.0.1"
  s.summary      = "网页Web演示示例"
  s.homepage     = "https://gitee.com/dvlproad/010-UIKit-Web-iOS.git"

  #s.license      = "MIT"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
              © 2008-2016 dvlproad. All rights reserved.
    LICENSE
  }

  s.author   = { "dvlproad" => "" }
  

  s.description  = <<-DESC
 				          -、演示示例

                   A longer description of TSDemo_Web in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  

  s.platform     = :ios, "9.0"
  s.swift_version = '5.0'
 
  s.source       = { :git => "https://gitee.com/dvlproad/010-UIKit-Web-iOS.git", :tag => "TSDemo_Web_0.0.1" }
  #s.source_files  = "CJDemoCommon/*.{h,m}"
  #s.source_files = "CJChat/TestOSChinaPod.{h,m}"

  s.frameworks = "UIKit"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

  #多个依赖就写多行
  s.dependency 'CQDemoKit/BaseVC'
  s.dependency 'CQDemoKit/BaseUtil'
  s.dependency 'CQDemoKit/StateUI'
  s.dependency 'CQDemoResource/Images'

  
  # Main
  s.subspec 'Main' do |ss|
    ss.source_files = "TSDemo_Web/Main/**/*.{h,m}"

    ss.dependency 'TSDemo_Web/DouyinUrlAnalyze'
    ss.dependency 'TSDemo_Web/RequestHTML'
    ss.dependency 'TSDemo_Web/OCJS'
    ss.dependency 'TSDemo_Web/H5ImgSetting'
  end
  
  # DouyinUrlAnalyze
  s.subspec 'DouyinUrlAnalyze' do |ss|
    ss.source_files = "TSDemo_Web/DouyinUrlAnalyze/**/*.{h,m}"

    ss.dependency 'TSDemo_Web-Swift/DouyinUrlAnalyze'
  end
  
  
  
  # 0. BaseWebViewController
  s.subspec 'BaseWebViewController' do |ss|
    ss.source_files = "TSDemo_Web/0BaseWebViewController/**/*.{h,m}"

    ss.dependency 'Masonry'
    ss.dependency 'CJBaseUIKit/UIColor'
    ss.dependency 'CJWebKit/UIViewController/CJBaseWebViewController'
  end
  
  # 1. RequestHTML
  s.subspec 'RequestHTML' do |ss|
    ss.source_files = "TSDemo_Web/1RequestHTML/**/*.{h,m}"
    ss.resource_bundle = {
      'TSDemo_Web_RequestHTML' => ['TSDemo_Web/1RequestHTML/**/*.{png,html}'] # TSDemo_Web 为生成boudle的名称，可以随便起，但要记住，库里要用
    }
    
    ss.dependency 'TSDemo_Web/BaseWebViewController'
  end
  
  # 2. OCJS
  s.subspec 'OCJS' do |ss|
    ss.source_files = "TSDemo_Web/2OCJS/**/*.{h,m}"
    ss.resource_bundle = {
      'TSDemo_Web_OCJS' => ['TSDemo_Web/2OCJS/**/*.{png,html}']
    }
    
    ss.dependency 'TSDemo_Web/BaseWebViewController'
  end
  
  # 3. H5ImgSetting
  s.subspec 'H5ImgSetting' do |ss|
    ss.source_files = "TSDemo_Web/3H5ImgSetting/**/*.{h,m}"
    
    ss.resource_bundle = {
      'TSDemo_Web_H5ImgSetting' => ['TSDemo_Web/3H5ImgSetting/**/*.{png,html}']
    }

    ss.dependency 'TSDemo_Web/BaseWebViewController'
    ss.dependency 'CQDemoKit/Demo_RipeView/ImagePicker'
    ss.dependency 'CJFile/CJFileManager'
    ss.dependency 'CJBaseUIKit/UIImage'
  end
  
end
