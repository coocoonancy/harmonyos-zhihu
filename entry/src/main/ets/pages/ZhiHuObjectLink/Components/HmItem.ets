import promptAction from '@ohos.promptAction'
import { ReplyItem, ReplyItemModel } from '../models'

@Component
struct HmItem {
  @ObjectLink
  item: ReplyItemModel
  // 点赞
  changeLike() {
    if (this.item.likeFlag) {
      // 点过赞
      this.item.likeNum--
    } else {
      // 没有点过赞
      this.item.likeNum++
    }
    this.item.likeFlag = !this.item.likeFlag

  }

  build() {
    Row() {
      Row({ space: 16 }) {
        Image(this.item.avatar)
          .width(40)
        Column({ space: 8 }) {
          Text(this.item.author)
            .textAlign(TextAlign.Start)
          Text(this.item.content)
            .textAlign(TextAlign.Start)
          Row() {
            Row() {
              Text(this.item.time)
                .fontColor(Color.Gray)
                .margin({ right: 4 })
                .lineHeight(22)
              Text(this.item.area)
                .fontColor(Color.Gray)
                .lineHeight(22)
            }

            Row() {
              Image($r('app.media.hover'))
                .width(16)
                .height(16)
                .margin({ right: 2 })
                .fillColor(this.item.likeFlag ? Color.Red : Color.Gray)
              Text(this.item.likeNum.toString())
                .fontColor(this.item.likeFlag ? Color.Red : Color.Gray)
            }
            .onClick(() => {
              this.changeLike();
              // promptAction.showToast({ message: '点赞' })
            })
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
}

export { HmItem }