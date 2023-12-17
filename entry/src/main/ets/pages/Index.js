import router from '@ohos.router';
const USER_TOKEN = 'user_token';
PersistentStorage.PersistProp(USER_TOKEN, '');
class User {
    constructor() {
        this.account = '';
        this.password = '';
    }
}
export var CustomColor;
(function (CustomColor) {
    CustomColor["Primary"] = "#EF4F3F";
    CustomColor["Success"] = "#27BA9B";
    CustomColor["Warning"] = "#E19A30";
    CustomColor["Danger"] = "#FF4C4C";
    CustomColor["PrimaryText"] = "#2A2929";
    CustomColor["DisabledDanger"] = "#FADCD9";
    CustomColor["SecondaryText"] = "#818181";
    CustomColor["BorderColor"] = "#F4F4F4";
})(CustomColor || (CustomColor = {}));
struct Login extends   {
    constructor() { }
    disabledStyle() {
        
    
            .backgroundColor(CustomColor.DisabledDanger);
    }
    focusStyle() {
        
    
            .border({
            color: CustomColor.Danger
        });
    }
    normalStyle() {
        
    
            .border({
            radius: 0,
            width: { bottom: 1 },
            color: CustomColor.BorderColor
        });
    }
    isDisabled() {
        return this.userInfo.account !== '' && (this.loginType === 1 && this.userInfo.password !== '') || (this.loginType === 0 && this.code !== '');
    }
    build() {
            .width('100%')
            .height('100%');
    }
}
//# sourceMappingURL=Index.js.map