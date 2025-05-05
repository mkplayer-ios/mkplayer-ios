Pod::Spec.new do |spec|

    spec.name         = "mkplayer"
    spec.version      = "1.40.0.0.1"
    spec.summary      = "MKPlayer is an iOS SDK for the MediaFirst player."
    spec.homepage     = "https://www.mediakind.com/"
    spec.license      = "Commercial"
    spec.author       = { "MediaKind" => "support@mediakind.com" }

    spec.platform     = :ios, "14.0"
    spec.platform     = :tvos, "14.0"

    spec.ios.deployment_target = "14.0"
    spec.tvos.deployment_target = "14.0"

    spec.source       = { :http => "https://mkplayer.z13.web.core.windows.net/ios_tvos/MKPlayer-1.40.0.0.1.zip" }
    spec.swift_version = "5"

    spec.ios.vendored_frameworks = 'MKPlayer/MKPlayer.xcframework'
    spec.source_files = 'MKPlayer/**/*.{swift,h,m}'
    spec.public_header_files = 'MKPlayer/**/*.{h}'
    spec.ios.framework  = 'Foundation'
    spec.ios.framework  = 'UIKit'
    spec.ios.framework  = 'AVFoundation'
    spec.ios.framework  = 'AVKit'
    spec.ios.framework  = 'WebKit'
    spec.ios.dependency 'BitmovinPlayer', '3.85.2'

    spec.tvos.vendored_frameworks = 'MKPlayer/MKPlayer.xcframework'
    spec.tvos.framework  = 'Foundation'
    spec.tvos.framework  = 'UIKit'
    spec.tvos.framework  = 'AVFoundation'
    spec.tvos.framework  = 'AVKit'
    spec.tvos.dependency 'BitmovinPlayer', '3.85.2'
    spec.tvos.exclude_files = ['MKPlayer/**/DownloadManager/**', "MKPlayer/**/MKPOMManager.swift", 'MKPlayer/**/Event/Data/Download/**","MKPlayer/**/Event/*Download*','MKPlayer/**/Config/MKPRemoteControlConfiguration.swift', 'MKPlayer/**/Casting/**']

    spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=*simulator*]' => 'arm64' }
end
