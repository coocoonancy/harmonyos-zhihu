// @Entry({ routeName: 'zhihu_hsp' })
@Entry()
@Component
export struct Index {
  @State message: string = 'ModuleRouterCase HSP'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}