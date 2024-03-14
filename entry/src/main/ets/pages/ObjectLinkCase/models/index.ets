interface DouYinComment {
  content: string
  likes: number
  auther: string
}

@Observed
export class DouYinCommentModel implements DouYinComment {
  content: string = ''
  likes: number = 0
  auther: string = ''

  constructor(model: DouYinComment) {
    this.content = model.content
    this.likes = model.likes
    this.auther = model.auther
  }
}
