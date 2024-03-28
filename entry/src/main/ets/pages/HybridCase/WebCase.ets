import webview from '@ohos.web.webview'

@Entry
@Component
struct WebCase {
  controller: webview.WebviewController = new webview.WebviewController()

  build() {
    Column() {
      Web({
        src: 'file://' + getContext().filesDir + '/toutiao/index.html',
        controller: this.controller
      }).domStorageAccess(true)
        .width('100%')
        .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}