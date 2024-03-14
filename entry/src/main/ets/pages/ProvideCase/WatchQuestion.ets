import { optionItemModel, questionInfoModel, userAnswer } from './models'

@Entry
@Component
struct WatchQuestion {
  @State
  questions: questionInfoModel[] = []
  @State
  currentIndex: number = 0
  @State
  answerMap: Record<number, userAnswer> = {}

  aboutToAppear(): void {
    this.getQuestions()
  }

  async getQuestions() {
    const result = await new Promise<questionInfoModel[]>((resolve) => {
      setTimeout(() => {
        resolve([new questionInfoModel({
          id: 1,
          title: '下面说法正确的是',
          options: [new optionItemModel({
            label: "鸿蒙和openharmony是一回事",
            letter: 'A'
          }),
            new optionItemModel({
              label: "鸿蒙的装饰器不可以做响应式",
              letter: 'B'
            }), new optionItemModel({
              label: "arkTS借鉴了TS的语法",
              letter: 'C'
            }),
            new optionItemModel({
              label: "鸿蒙4.0已经面世1年了",
              letter: 'D'
            })]
        }), new questionInfoModel({
          id: 2,
          title: '哪个修饰符不具备响应式',
          options: [new optionItemModel({
            label: "State",
            letter: 'A'
          }),
            new optionItemModel({
              label: "Link",
              letter: 'B'
            }), new optionItemModel({
              label: "Prop",
              letter: 'C'
            }),
            new optionItemModel({
              label: "Preview",
              letter: 'D'
            })]
        }), new questionInfoModel({
          id: 3,
          title: 'Link的用法下面哪个语法是正确的',
          options: [new optionItemModel({
            label: "$$this.xxx",
            letter: 'A'
          }),
            new optionItemModel({
              label: "$.xxx",
              letter: 'B'
            }), new optionItemModel({
              label: "$this.xxx",
              letter: 'C'
            }),
            new optionItemModel({
              label: "$$xxx",
              letter: 'D'
            })]
        })])

      }, 200)
    })
    this.questions = result;
  }

  getPreEnable() {
    return this.currentIndex > 0
  }

  getNextEnable() {
    return this.currentIndex < this.questions.length - 1
  }

  preQuestion() {
    if (this.getPreEnable()) {
      this.currentIndex--
    }
  }

  nextQuestion() {
    if (this.getNextEnable()) {
      this.currentIndex++
    }
  }

  getCurrent() {
    if (this.questions.length) {
      return this.questions[this.currentIndex]
    }
    return null
  }

  // 选中答案
  selectAnswer(option: optionItemModel) {
    let question = this.getCurrent()
    if (question) {
      this.answerMap[question.id] = {
        letter: option.letter,
        id: question.id,
        user_id: '123456'
      }
    }
  }

  highColor(option: optionItemModel, type: 'back' | 'font' = 'back') {
    let question = this.getCurrent()
    if (question) {
      if (this.answerMap[question.id].letter === option.letter) {
        return type === 'back' ? Color.Blue : Color.White
      }
    }
    return type === 'back' ? '#f9f9f9' : Color.Black

  }

  @Styles
  imgStyle() {
    .width(20)
    .height(20)
  }

  @Builder
  getTop() {
    Row() {
      Image($r('app.media.ic_public_left_arrow'))
        .imgStyle()
      Text('在线模拟')
      Image($r('app.media.ic_gallery_discover'))
        .imgStyle()
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .height(40)

  }

  @Builder
  getBottom() {
    Row() {
      Row() {
        Image($r('app.media.ic_public_left_arrow'))
          .imgStyle()
          .fillColor(this.getPreEnable() ? Color.Black
                                         : Color.Gray)
        Text('上一题')
          .fontColor(this.getPreEnable() ? Color.Black
                                         : Color.Gray)
      }
      .enabled(this.getPreEnable())
      .onClick(() => {
        this.preQuestion()
      })

      Row() {
        Text('下一题')
          .fontColor(this.getNextEnable() ? Color.Black
                                          : Color.Gray)
        Image($r('app.media.ic_public_left_arrow'))
          .imgStyle()
          .rotate({ angle: 180 })
          .fillColor(this.getNextEnable() ? Color.Black
                                          : Color.Gray)
      }
      .enabled(this.getNextEnable())
      .onClick(() => {
        this.nextQuestion()

      })
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .padding({ top: 16, bottom: 16 })
  }

  @Builder
  getMiddle() {
    Column({ space: 16 }) {
      if (this.questions.length) {
        Text(this.getCurrent()!.title)
        ForEach(this.getCurrent()!.options, (item: optionItemModel) => {
          Row({ space: 16 }) {
            Text(item.letter)
              .fontWeight(500)
              .fontColor(this.highColor(item, 'font'))
            Text(item.label)
              .fontColor(this.highColor(item, 'font'))
          }
          .padding(16)
          .borderRadius(4)
          .backgroundColor(this.highColor(item))
          .width('100%')
          .onClick(() => {
            this.selectAnswer(item)
          })
        })
      }

    }
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .padding({ top: 16, bottom: 16 })
  }

  build() {
    Column() {
      this.getTop()
      Progress({ value: this.currentIndex + 1, total: this.questions.length })
      Column() {
        this.getMiddle()
      }
      .layoutWeight(1)

      this.getBottom()
    }
    .width('100%')
    .height('100%')
    .padding({ left: 16, right: 16 })
  }
}