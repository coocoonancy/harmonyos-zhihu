import { tabItemModel } from '../models'

@Builder
function commonBar(item: tabItemModel, index: number) {
  Column() {
    Image(index === this.currentIndex ? item.selectIcon : item.icon)
      .width(20)
      .height(20)
    Text(item.title)
      .fontSize(12)
      .fontColor(index === this.currentIndex ? '#1AAD19' : Color.Black)
      .margin({
        top: 5
      })
  }
}

export { commonBar }