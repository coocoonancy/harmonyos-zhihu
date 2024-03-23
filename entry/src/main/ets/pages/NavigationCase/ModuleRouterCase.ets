import router from '@ohos.router'
import('@ohos/library/src/main/ets/Index')
@Entry
@Component
struct ModuleRouterCase {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('Url跳到模块')
          .onClick(() => {
            router.pushUrl({
              url: '@bundle:com.coocoonancy.myapplication/library/ets/pages/Index'
            })
          })
        Button('Name跳到模块')
          .onClick(() => {
           // router.pushNamedRoute({
           //   name: 'zhihu_hsp'
           // })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}