export interface userInfo {
  mobile: string
  email: string
  id: string
  avatar: ResourceStr,
  nickname: string
}
export interface  optionItem {
  letter: string
  label: string
}

export interface  questionInfo {
  id: number
  title: string
  options: optionItem[]
}
export interface  userAnswer {
  letter: string
  user_id: string,
  id: number
}
export class userInfoModel implements userInfo {
  mobile: string = ''
  email: string = ''
  id: string = ''
  avatar: ResourceStr = ''
  nickname: string = ''

  constructor(model: userInfo) {
    this.mobile = model.mobile
    this.email = model.email
    this.id = model.id
    this.avatar = model.avatar
    this.nickname = model.nickname
  }
}
export class optionItemModel implements optionItem {
  letter: string = ''
  label: string = ''

  constructor(model: optionItem) {
    this.letter = model.letter
    this.label = model.label
  }
}
export class questionInfoModel implements questionInfo {
  id: number = 0
  title: string = ''
  options: optionItem[] = []

  constructor(model: questionInfo) {
    this.id = model.id
    this.title = model.title
    this.options = model.options
  }
}
export class userAnswerModel implements userAnswer {
  letter: string = ''
  user_id: string = ''
  id: number = 0

  constructor(model: userAnswer) {
    this.letter = model.letter
    this.user_id = model.user_id
    this.id = model.id
  }
}
