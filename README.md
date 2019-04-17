# flutter_native_hybird
## 同一级目录创建原生项目与flutter项目

## 原生项目的 settings.gradle 文件添加以下内容
```
setBinding(new Binding([gradle:this]))
evaluate(new File(
        settingsDir.parentFile,
        'flutter_module/.android/include_flutter.groovy'
))
```

## 原生项目的 build.gradle文件添加flutter_module依赖
```
implementation project(':flutter')
```

## 异常 Error: Invoke-customs are only supported starting with Android O (--min-api 26)
```
  compileOptions {
        sourceCompatibility 1.8
        targetCompatibility 1.8
    }
	minSdkVersion的版本大于flutter_module/.android/app/build.gradle的配置
```


