import { FoodItemModel } from '../models'

@Component
struct MTBottom {
  @Consume
  cartVisible: boolean
  @Consume
  userCart: FoodItemModel[]

  getTotalCount() {
    return this.userCart.reduce((pre, item) => {
      return pre + item.count
    }, 0)
  }

  getTotalPrice() {
    return this.userCart.reduce((pre, item) => {
      return pre + item.count * item.price
    }, 0)
  }

  build() {
    Row() {
      Row() {
        Badge({
          value: this.getTotalCount().toString(),
          position: BadgePosition.Right,
          style: { badgeSize: 18 }
        }) {
          Image($r('app.media.ic_public_cart'))
            .width(47)
            .height(69)
            .position({ y: -19 })
        }
        .width(50)
        .height(50)
        .margin({ left: 25, right: 10 })
        .onClick(() => {
          this.cartVisible = !this.cartVisible
        })

        Column() {
          Text() {
            Span('¥')
              .fontColor('#fff')
              .fontSize(12)
            Span(this.getTotalPrice().toString())
              .fontColor('#fff')
              .fontSize(24)
          }

          Text('配送费¥5')
            .fontSize(12)
            .fontColor('#999')

        }
        .alignItems(HorizontalAlign.Start)
        .layoutWeight(1)


        Text('去结算')
          .height(50)
          .backgroundColor($r('app.color.main_color'))
          .alignSelf(ItemAlign.Stretch)
          .padding(16)
          .borderRadius({
            topRight: 24,
            bottomRight: 24
          })

      }
      .height(50)
      .width('100%')
      .backgroundColor($r('app.color.bottom_back'))
      .borderRadius(25)

    }
    .width('100%')
    .padding({
      left: 20,
      right: 20,
      bottom: 20
    })
  }
}

export { MTBottom }