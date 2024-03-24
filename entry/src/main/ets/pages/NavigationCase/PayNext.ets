import common from '@ohos.app.ability.common'

@Entry
@Component
struct PayNext {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('拉起支付Ability')
          .onClick(() => {
            const context = getContext() as common.UIAbilityContext
            context.startAbility({
              deviceId: '',
              bundleName: 'com.coocoonancy.myapplication',
              abilityName: 'pay'
            })
          })
        Button('拉起支付Ability参数')
          .onClick(() => {
            const context = getContext() as common.UIAbilityContext
            context.startAbility({
              deviceId: '',
              bundleName: 'com.coocoonancy.myapplication',
              abilityName: 'pay',
              parameters: {
                order: Date.now()
              }
            })
          })
        Button('拉起支付Ability参数')
          .onClick(async () => {
            const context = getContext() as common.UIAbilityContext
            const result = await context.startAbilityForResult({
              deviceId: '',
              bundleName: 'com.coocoonancy.myapplication',
              abilityName: 'PayAbility',
              parameters: {
                order: Date.now()
              }
            })
            AlertDialog.show({
              message: JSON.stringify(result)
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}