import http from '@ohos.net.http'
import promptAction from '@ohos.promptAction'
import { Category } from '../models'

export const getFoodData = async () => {
  const req = await http.createHttp()
  try {
    const res = await req.request('https://zhoushugang.gitee.io/fe2022/takeaway.json')
    return JSON.parse(res.result as string) as Category[]
  }
  catch (error) {
    const errorStr = JSON.stringify(error)
    promptAction.showToast({ message: errorStr })
    return Promise.reject(errorStr)
  }
  finally {
    req.destroy()
  }
}