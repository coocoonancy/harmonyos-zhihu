import { tabItemModel } from '../models'
// import { commonBar } from './builders'

@Entry
@Component
struct GlobalBuilderCase {
  @State currentIndex: number = 0
  @State tabList: tabItemModel[] = [
    new tabItemModel({
      icon: $r("app.media.ic_public_message"),
      selectIcon: $r('app.media.ic_public_message_filled'),
      name: 'wechat',
      title: '微信',
      isSelected: false
    }),
    new tabItemModel({
      icon: $r('app.media.ic_public_contacts_group'),
      selectIcon: $r('app.media.ic_public_contacts_group_filled'),
      name: 'connect',
      title: '联系人',
      isSelected: false
    }),
    new tabItemModel({
      icon: $r('app.media.ic_gallery_discover'),
      selectIcon: $r('app.media.ic_gallery_discover_filled'),
      name: 'discover',
      title: '发现',
      isSelected: false
    }),
    new tabItemModel({
      icon: $r('app.media.ic_public_contacts'),
      selectIcon: $r('app.media.ic_public_contacts_filled'),
      name: 'my',
      title: '我的',
      isSelected: false
    })
  ]

  @Builder
  commonBar(item: tabItemModel, index: number) {
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

  build() {
    Tabs({ index: this.currentIndex }) {
      ForEach(this.tabList, (item: tabItemModel, index: number) => {
        TabContent() {
          Column() {
            Text(item.title)
          }
        }
        .tabBar(this.commonBar(item, index))
      })
    }
    .barPosition(BarPosition.End)
    .onChange(value => {
      this.currentIndex = value;
    })
  }
}