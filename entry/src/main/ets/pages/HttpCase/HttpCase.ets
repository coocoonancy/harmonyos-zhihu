import http from '@ohos.net.http'

@Entry
@Component
struct HttpCase {
  @State message: string = 'Hello World'

  async sendHttp() {
    const req = http.createHttp()
    const res = await req.request('')
    AlertDialog.show({ message: res.result as string })
    req.destroy()
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}