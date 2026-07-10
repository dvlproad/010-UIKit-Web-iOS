Pod::Spec.new do |s|
  #验证方法：pod lib lint CJWebKit.podspec --allow-warnings --use-libraries --verbose
  s.name         = "CJWebKit"
  s.version      = "0.0.1"
  s.summary      = "Web相关基础"
  s.homepage     = "https://github.com/dvlproad/010-UIKit-Web-iOS"

  s.description  = <<-DESC
                 - CJWebKit/UIViewController/CJBaseWebViewController： 基础的 WebViewController
                 
                   A longer description of CJWebKit in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC
  s.description  = <<-DESC
                 Web相关基础，可按需独立引入：
                 • CJWebKit/UIViewController - UIViewController
                 • CJWebKit/UIViewController/CJBaseWebViewController - 基础的 WebViewController

                 每个子库可独立引入，详见各子库描述。
                 DESC
  

  #s.license      = {
  #  :type => 'Copyright',
  #  :text => <<-LICENSE
  #            © 2008-2016 Dvlproad. All rights reserved.
  #  LICENSE
  #}
  s.license      = "MIT"

  s.author   = { "dvlproad" => "" }

  s.platform     = :ios, "8.0"
 
  s.source       = { :git => "https://github.com/dvlproad/010-UIKit-Web-iOS.git", :tag => "CJWebKit_0.0.1" }
  s.source_files  = "CJWebKit/*.{h,m}"

  s.frameworks = "UIKit"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  
  # UIViewController
  s.subspec 'UIViewController' do |ss|
    # ss.subspec 'ProgressWebViewController' do |sss|
    #   sss.source_files = "CJWebKit/UIViewController/ProgressWebViewController/**/*.{h,m}"

    #   sss.dependency 'Masonry'
    #   sss.dependency 'SVProgressHUD'
    #   sss.dependency 'NJKWebViewProgress'
    # end

    # 基础的 WebViewController
    ss.subspec 'CJBaseWebViewController' do |sss|
      sss.source_files = "CJWebKit/UIViewController/CJBaseWebViewController/**/*.{h,m}"

      sss.dependency 'Masonry'
      sss.dependency 'SVProgressHUD'
      sss.dependency 'CJBaseHelper/WebCJHelper'
    end
  end


end
