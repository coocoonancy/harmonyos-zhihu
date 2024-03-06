import promptAction from '@ohos.promptAction'
import { ReplyItem, ReplyItemModel } from '../models'

@Component
struct HmItem {
  item: ReplyItemModel = new ReplyItemModel({
    id: 999,
    author: '周杰伦',
    avatar: 'https://developer.huawei.com/allianceCmsResource/resource/HUAWEI_Developer_VUE/images/homeNew/College.svg',
    likeNum: 10,
    likeFlag: false,
    time: '03-02',
    area: '北京',
    content: '人到了一定的年龄新陈代谢就慢了，吃了胖不吃瘦了皱纹就多，要靠锻炼 '
  })
  changeLike: () => void = () => {
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