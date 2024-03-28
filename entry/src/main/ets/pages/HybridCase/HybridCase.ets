import request from '@ohos.request'
import fileIo from '@ohos.file.fs'
import zlib from '@ohos.zlib'
import router from '@ohos.router'
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct HybridCase {
  filePath: string = ''
  @State currentValue: number = 0
  @State totalValue: number = 0
  @State
  showLoading: boolean = false

  async downloadZip() {
    try {
      this.showLoading = true
      const fileName = 'toutiao.zip'
      this.filePath = getContext().filesDir + '/' + fileName
      if (fileIo.listFileSync(getContext().filesDir).includes(fileName)) {
        fileIo.renameSync(getContext().filesDir + '/' + fileName, getContext().filesDir + '/toutiao.bak.zip')
      }
      const req = await request.downloadFile(getContext(), {
        filePath: this.filePath,
        url: 'https://gitee.com/shuiruohanyu/toutiao_net/raw/master/resources/toutiao.zip'
      })
      req.on('progress', (process, total) => {
        this.currentValue = process
        this.totalValue = total
      })
      req.on('fail', error => {
        AlertDialog.show({
          message: JSON.stringify(error)
        })
      })
      req.on('complete', () => {
        this.showLoading = false
        this.decompressFile()
      })
    }
    catch (error) {
      AlertDialog.show({
        message: JSON.stringify(error.message)
      })
    }

  }

  async decompressFile() {
    try {
      await zlib.decompressFile(getContext().filesDir + '/toutiao.zip', getContext().filesDir, {})
      promptAction.showToast({ message: '解压成功' })
      router.pushUrl({
        url: 'pages/HybridCase/WebCase'
      })
    }
    catch (error) {
      AlertDialog.show({ message: error.message })
    }
  }

  build() {
    Stack() {
      Row() {
        Column() {
          Button('下载资源')
            .onClick(() => {
              this.downloadZip()
            })
        }
        .width('100%')
      }
      .height('100%')

      if (this.showLoading) {
        Column() {
          Row() {
            Progress({
              value: this.currentValue,
              total: this.totalValue,
            }).width('100%')
          }
          .width('100%')
          .padding({
            left: 10,
            right: 20
          })
        }
        .justifyContent(FlexAlign.Center)
        .width('100%')
        .height("100%")
        .backgroundColor("rgba(0,0,0,0.4)")
      }
    }
  }
}