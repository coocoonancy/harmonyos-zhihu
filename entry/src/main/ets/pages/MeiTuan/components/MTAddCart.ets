import { FoodItemModel } from '../models'

@Component
struct MTAddCart {
  @Consume
  userCart: FoodItemModel[]
  item: FoodItemModel

  getCount() {
    return this.userCart.find(item => item.id === this.item.id)?.count || 0
  }

  build() {
    Row() {
      Row() {
        Image($r('app.media.ic_screenshot_line'))
          .width(10)
          .aspectRatio(1)
      }
      .width(16)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .borderRadius(4)
      .border({ width: 0.5, color: $r('app.color.font_main_color') })
      .backgroundColor($r('app.color.white'))
      .visibility(this.getCount() ? Visibility.Visible : Visibility.Hidden)

      Text('0').fontSize(14)
        .visibility(this.getCount() ? Visibility.Visible : Visibility.Hidden)
      Row() {
        Image($r('app.media.ic_public_add_filled'))
          .width(10)
          .aspectRatio(1)
      }
      .width(16)
      .aspectRatio(1)
      .justifyContent(FlexAlign.Center)
      .borderRadius(4)
      .border({ width: 0.5, color: $r('app.color.font_main_color') })
      .backgroundColor($r('app.color.main_color'))
    }
  }
}

export { MTAddCart }