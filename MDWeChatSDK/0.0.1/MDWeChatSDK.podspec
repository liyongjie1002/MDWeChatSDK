

Pod::Spec.new do |s|

  s.name         = "MDWeChatSDK"
  s.version      = "0.0.1"
  s.summary      = "微信SDK的二次封装"
  s.description  = <<-DESC
  					       微信SDK的二次封装,包含认证，获取token，刷新token
                   DESC
  s.homepage     = "https://github.com/Iyongjie/MDWeChatSDK.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "李永杰" => "yj.li@muheda.com" }
  s.source       = { :git => "https://github.com/Iyongjie/MDWeChatSDK.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '8.0'
  s.requires_arc = true
  
  s.subspec 'WeChatSDK' do |ss|
    ss.source_files = 'MDWeChatSDK/WeChatSDK/*.{txt,h}'
    ss.vendored_libraries = 'MDWeChatSDK/WeChatSDK/*.{a}'
    ss.frameworks = 'SystemConfiguration','Security','CoreTelephony','CFNetwork'
    ss.libraries  = 'z','sqlite3.0','c++'
  end
  s.subspec 'WXApiHandler' do |ss|
    ss.source_files = 'MDWeChatSDK/WXApiHandler/*.{m,h}'
    ss.dependency 'MDWeChatSDK/WXManager'
  end
  s.subspec 'WXManager' do |ss|
    ss.source_files = 'MDWeChatSDK/WXManager/*.{m,h}'
    ss.dependency 'MDWeChatSDK/WeChatSDK'
  end
  s.subspec 'WXService' do |ss|
  	ss.source_files = 'MDWeChatSDK/WXService/*.{m,h}'
  end
  
  s.dependency 'MDNetwork'

end
