@CustomDialog
struct PreviewDialog {
  controller: CustomDialogController
  urls: ResourceStr[] = []
  activeIndex: number = 0

  build() {
    Column() {
      Swiper() {
        ForEach(this.urls, (url: ResourceStr) => {
          Image(url)
            .width('100%')
        })
      }
      .index(this.activeIndex)
      .onChange((index) => {
        this.activeIndex = index;
      })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Black)
    .justifyContent(FlexAlign.Center)
    .onClick(() => {
      this.controller.close()
    })
  }
}

export { PreviewDialog }