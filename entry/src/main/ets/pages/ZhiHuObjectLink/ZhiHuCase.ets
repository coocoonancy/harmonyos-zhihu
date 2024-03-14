import { HmNav, HmItem } from './Components'
import { HmReplyInput } from './Components/HmReplyInput'
import { ReplyItemModel } from './models'

@Entry
@Component
struct ZhiHuCase {
  title: string = '评论回复'
  scroller: Scroller = new Scroller()
  @State showTop: boolean = true
  @State
  currentComment: ReplyItemModel = new ReplyItemModel({
    id: 999,
    author: '周杰伦',
    avatar: 'https://developer.huawei.com/allianceCmsResource/resource/HUAWEI_Developer_VUE/images/homeNew/College.svg',
    likeNum: 10,
    likeFlag: false,
    time: '03-02',
    area: '北京',
    content: '人到了一定的年龄新陈代谢就慢了，吃了胖不吃瘦了皱纹就多，要靠锻炼 '
  })
  // 发布
  publishComment(content: string) {
    this.commentList.unshift(new ReplyItemModel({
      id: Math.random(),
      author: '周杰伦',
      avatar: 'https://developer.huawei.com/allianceCmsResource/resource/HUAWEI_Developer_VUE/images/homeNew/College.svg',
      likeNum: 10,
      likeFlag: false,
      time: '03-02',
      area: '北京',
      content
    }))
  }


  @State commentList: ReplyItemModel[] = [
    new ReplyItemModel({
      id: 1,
      avatar: 'https://picx.zhimg.com/027729d02bdf060e24973c3726fea9da_l.jpg?source=06d4cd63',
      author: '偏执狂-妄想家',
      content: '更何况还分到一个摩洛哥[惊喜]',
      time: '11-30',
      area: '海南',
      likeNum: 34,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 2,
      avatar: 'https://pic1.zhimg.com/v2-5a3f5190369ae59c12bee33abfe0c5cc_xl.jpg?source=32738c0c',
      author: 'William',
      content: '当年希腊可是把1：0发挥到极致了',
      time: '11-29',
      area: '北京',
      likeNum: 58,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 3,
      avatar: 'https://picx.zhimg.com/v2-e6f4605c16e4378572a96dad7eaaf2b0_l.jpg?source=06d4cd63',
      author: 'Andy Garcia',
      content: '欧洲杯其实16队球队打正赛已经差不多，24队打正赛意味着正赛阶段在小组赛一样有弱队。',
      time: '11-28',
      area: '上海',
      likeNum: 10,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 4,
      avatar: 'https://picx.zhimg.com/v2-53e7cf84228e26f419d924c2bf8d5d70_l.jpg?source=06d4cd63',
      author: '正宗好鱼头',
      content: '确实眼红啊，亚洲就没这种球队，让中国队刷',
      time: '11-27',
      area: '香港',
      likeNum: 139,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 5,
      avatar: 'https://pic1.zhimg.com/v2-eeddfaae049df2a407ff37540894c8ce_l.jpg?source=06d4cd63',
      author: '柱子哥',
      content: '我是支持扩大的，亚洲杯欧洲杯扩到32队，世界杯扩到64队才是好的，世界上有超过200支队伍，欧洲区55支队伍，亚洲区47支队伍，即使如此也就六成出现率',
      time: '11-27',
      area: '旧金山',
      likeNum: 29,
      likeFlag: false
    }),
    new ReplyItemModel({
      id: 6,
      avatar: 'https://picx.zhimg.com/v2-fab3da929232ae911e92bf8137d11f3a_l.jpg?source=06d4cd63',
      author: '飞轩逸',
      content: '禁止欧洲杯扩军之前，应该先禁止世界杯扩军，或者至少把亚洲名额一半给欧洲。',
      time: '11-26',
      area: '里约',
      likeNum: 100,
      likeFlag: false
    })
  ]

  build() {
    // Scroll() {
    //   Column() {
    //     HmNav({ title: this.title })
    //     HmItem()
    //     Divider().strokeWidth(6)
    //     ForEach([1, 2, 3, 4, 5], () => {
    //       HmItem()
    //     })
    //   }
    // }

    Column() {
      HmNav({ title: this.title })
      if (this.showTop) {
        HmItem({
          item: this.currentComment
        })
      }
      Divider().strokeWidth(6)
      List({ scroller: this.scroller }) {
        ForEach(this.commentList, (item: ReplyItemModel) => {
          ListItem() {
            HmItem({ item })
          }
        }, (item: ReplyItemModel) => item.id.toString() + item.likeNum.toString())
      }
      .layoutWeight(1)

      HmReplyInput({ publishComment: (content: string) => {
        this.publishComment(content)
        // 控制滚动条
        this.scroller.scrollEdge(Edge.Top)
      } })
    }
  }
}