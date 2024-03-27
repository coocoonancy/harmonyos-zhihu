import UIAbility from '@ohos.app.ability.UIAbility';
import hilog from '@ohos.hilog';
import window from '@ohos.window';
// import { TokenManager } from '../utils';
export default class EntryAbility extends UIAbility {
  onCreate(want, launchParam) {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onCreate');
  }

  onDestroy() {
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onDestroy');
  }

  onWindowStageCreate(windowStage: window.WindowStage) {
    // Main window is created, set main page for this ability
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageCreate');
    // const isToken = await TokenManager.getToken(this.context)
    // windowStage.getMainWindowSync()
    //   .setWindowLayoutFullScreen(true)
    // const routePage = isToken ? 'pages/MeiTuan/MTIndex' : 'pages/StorageCase/LoginStorageCase'
    const routePage = 'pages/AnimationCase/ImageAnimatorCase'
    windowStage.loadContent(routePage, (err, data) => {
      if (err.code) {
        hilog.error(0x0000, 'testTag', 'Failed to load the content. Cause: %{public}s', JSON.stringify(err) ?? '');
        return;
      }
      // windowStage.getMainWindowSync().setWindowBackgroundColor('#ffffff')
      // windowStage.getMainWindowSync().getUIContext()
      //   .setKeyboardAvoidMode(KeyboardAvoidMode.RESIZE)
      hilog.info(0x0000, 'testTag', 'Succeeded in loading the content. Data: %{public}s', JSON.stringify(data) ?? '');
    });
  }

  onWindowStageDestroy() {
    // Main window is destroyed, release UI related resources
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onWindowStageDestroy');
  }

  onForeground() {
    // Ability has brought to foreground
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onForeground');
  }

  onBackground() {
    // Ability has back to background
    hilog.info(0x0000, 'testTag', '%{public}s', 'Ability onBackground');
  }
}
