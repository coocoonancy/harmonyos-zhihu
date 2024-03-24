import common from '@ohos.app.ability.common'

@Entry
@Component
struct PayCase {
  @State message: string = 'Hello World'
  @StorageProp('order')
  order: number = 0

  build() {
    Row() {
      Column() {
        Text(this.order.toString())
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('开始支付')
          .onClick(() => {
            const context = getContext() as common.UIAbilityContext
            context.terminateSelfWithResult({
              resultCode: 1,
              want: {
                deviceId: '',
                abilityName: 'EntryAbility',
                bundleName: 'com.coocoonancy.myapplication',
                parameters: {
                  result: true
                }
              }
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}