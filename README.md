# SPSpecs
此处用于存放私有pod库的spec

# 创建属于自己的私有库集中营Private Spec Repo

## 步骤 在git上创建一个私有库集中营，专门用于存放发布的私有podspec

参考示例如：`https://github.com/quqianqian/SPSpecs`

## 步骤 git clone 私有库集中营 到本地目录下
```
mkdir tmpspec && cd tmpspec
git clone https://github.com/quqianqian/SPSpecs.git
```

## 步骤 在本地添加你自己的私有库集中营 
```
pod repo add SPSpecs https://github.com/quqianqian/SPSpecs.git
```

## 完成上步之后需要验证是否安装成功
```
cd ~/.cocoapods/repos/SPSpecs
pod repo lint .
```

## 【可选操作】移除私有库集中营
```
pod repo remove SPSpecs
```

# 新建自己的私有库

## 新建私有库目录
```
mkdir SPPrivateA && cd SPPrivateA
```

## 新建私有库podspec
```
pod spec create SPPrivateA
```

## 编辑私有库podspec
参考示范
```
Pod::Spec.new do |s|
  s.name         = "SPPrivateA"
  s.version      = "0.0.1"
  s.summary      = "just for private pod spec demo of SPPrivateA."
  #注意：s.description的字数要求要多于s.summary
  s.description  = <<-DESC
  just for private pod spec demo of SPPrivateA, by this, you can know how to set up a private pod spec 
                   DESC
  s.homepage     = "https://github.com/quqianqian/SPPrivateA"
  #注意：同级目录下要有对应的LICENSE文件
  s.license      = "MIT"
  s.author       = { "wuqianqian" => "2844057518@qq.com" }
  s.platform     = :ios, "8.0"
  #s.prefix_header_contents = '#import <UIKit/UIKit.h>', '#import <Foundation/Foundation.h>'      
  s.source       = { :git => "https://github.com/quqianqian/SPPrivateA.git", :tag => "#{s.version}" }
  #注意：原文件目录
  s.source_files  = "#{s.name}/**/*.{h,m}"
  #s.exclude_files = "#{s.name}/Exclude"
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  # s.libraries = "iconv", "xml2"
  s.requires_arc = true
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
end
```

## 校验私有库podspec
```
pod spec lint SPPrivateA.podspec
```

## 在当前目录下推送私有库podspec 到 私有库集中营
```
pod repo push SPSpecs SPPrivateA.podspec
```

# 使用私有库

## 编辑podfile
### 增加soucre
```
source ‘https://github.com/quqianqian/SPSpecs.git’
source 'http://git.sdp.nd/cocoapods/spec.git'
```

### 增加私有库依赖
```
pod 'SPPrivateA', '~> 0.0.1'
```

### 安装依赖库
```
pod install --verbose
```
