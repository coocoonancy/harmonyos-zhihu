@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Column() {
      Row() {
        Row() {
          Image($r('app.media.hover'))
            .width(16)
            .height(16)
        }
        .width(30)
        .height(30)
        .margin({ left: 20 })
        .borderRadius(15)
        .justifyContent(FlexAlign.Center)
        .backgroundColor(Color.Gray)

        Text('评论回复')
          .layoutWeight(1)
          .textAlign(TextAlign.Center)

      }
      .width('100%')
      .height(50)
      .padding({ right: 50 })
      .border({ width: { bottom: 1 }, color: Color.Grey })

      Row() {
        Row({ space: 16 }) {
          Image('https://developer.huawei.com/allianceCmsResource/resource/HUAWEI_Developer_VUE/images/homeNew/College.svg')
            .width(40)
          Column({ space: 8 }) {
            Text('周杰伦')
              .textAlign(TextAlign.Start)
            Text('HarmonyOS的创新体验将帮助您应对万物互联时代带来的挑战与机遇，结合覆盖应用生命周期的场景解决方案，打造受用户喜爱的应用。通过全场景流量入口、AI加持下的智慧分发，让更多用户能够畅享您的应用。')
              .textAlign(TextAlign.Start)
            Row() {
              Row() {
                Text('10-21')
                  .fontColor(Color.Gray)
                  .margin({ right: 4 })
                  .lineHeight(22)
                Text('浙江省杭州市')
                  .fontColor(Color.Gray)
                  .lineHeight(22)
              }

              Row() {
                Image($r('app.media.hover'))
                  .width(16)
                  .height(16)
                  .margin({ right: 2 })
                  .fillColor(Color.Gray)
                Text('100')
                  .fontColor(Color.Gray)
              }
            }
            .width('100%')

            .justifyContent(FlexAlign.SpaceBetween)
          }
          .layoutWeight(1)
          .alignItems(HorizontalAlign.Start)

        }
        .width('100%')
        .padding(16)
        .alignItems(VerticalAlign.Top)
      }
    }
    .width('100%')
  }
}