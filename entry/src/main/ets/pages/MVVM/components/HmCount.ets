import { FoodItemModel } from '../models'

@Extend(Text) function addText() {
  .width(32)
  .height(32)
  .border({ width: 1 })
  .borderRadius(16)
  .textAlign(TextAlign.Center)
}

@Component
struct HmCount {
  @Prop
  item: FoodItemModel
  addCart: (item: FoodItemModel, type: 'add' | 'cut') => void = () => {
  }

  build() {
    Row({ space: 8 }) {
      Text('-')
        .addText()
        .onClick(() => {
          this.addCart(this.item, 'cut')
        })
      Text(this.item.food_count.toString())
        .fontSize(16)
        .fontWeight(500)
      Text('+')
        .addText()
        .onClick(() => {
          this.addCart(this.item, 'add')
        })
    }
  }
}

export { HmCount }



