import { FoodItemModel } from '../models'
import { MTAddCart } from './MTAddCart'

@Component
struct MTFoodItem {
  item: FoodItemModel

  build() {
    Row() {
      Image(this.item.picture)
        .width(90)
        .aspectRatio(1)
      Column() {
        Text(this.item.name)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(2)
          .fontWeight(600)
        Text(this.item.description)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .maxLines(1)
          .fontSize(12)
          .fontColor($r('app.color.food_item_second_color'))
        ForEach(this.item.food_tag_list, (tag: string) => {
          Text(tag)
            .fontSize(10)
            .backgroundColor($r("app.color.food_item_label_color"))
            .fontColor($r("app.color.font_main_color"))
            .padding({ top: 2, bottom: 2, right: 5, left: 5 })
            .borderRadius(2)
        })

        Text() {
          Span('月销售' + this.item.month_saled)
          Span(' ')
          Span(this.item.like_ratio_desc)
        }
        .fontSize(12)
        .fontColor($r('app.color.black'))

        Row() {
          Text() {
            Span('¥ ')
              .fontColor($r('app.color.font_main_color'))
              .fontSize(10)
            Span(this.item.price?.toString())
              .fontColor($r('app.color.font_main_color'))
              .fontWeight(FontWeight.Bold)
          }

          MTAddCart({ item: this.item, fid: this.item.id })
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')
      }
    }

  }
}

export { MTFoodItem }