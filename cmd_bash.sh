#/bin/bash
./keytool-importkeypair -k ./platform.jks -p android -pk8 platform.pk8 -cert platform.x509.pem -alias platform

keytool -importkeystore -srckeystore ./platform.jks -destkeystore ./platform.jks -deststoretype pkcs12


#signingConfigs {
#    release {
#        File strFile = new File("../app/keystore/platform.jks")
#        storeFile file(strFile)
#        keyAlias 'platform'
#        keyPassword 'android'
#        storePassword 'android'
#    }
#    debug {
#        File strFile = new File("../app/keystore/platform.jks")
#        storeFile file(strFile)
#        keyAlias 'platform'
#        keyPassword 'android'
#        storePassword 'android'
#    }
#}

#buildTypes {
#    release {
#        signingConfig signingConfigs.release
#        minifyEnabled false
#        proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules.pro'
#    }
#    debug {
#        signingConfig signingConfigs.debug
#    }
#}
