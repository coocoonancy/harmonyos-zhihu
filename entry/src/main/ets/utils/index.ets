import preferences from '@ohos.data.preferences'

export class TokenManager {
  // 获取仓库
  static async getStore(context?: Context) {
    // token_store仓库
    //  1. 页面中getContext 2.ability未初始化
    const store = await preferences.getPreferences(context || getContext(), 'token_store')
    return store
  }
  // 设置内容
  static async setToken(token: string, context?: Context) {
    const store = await TokenManager.getStore(context)
    await store.put('user_token', token)
    await store.flush()
  }
  // 获取内容
  static async getToken(context?: Context) {
    const store = await TokenManager.getStore(context)
    return store.get('user_token', '')
  }
}