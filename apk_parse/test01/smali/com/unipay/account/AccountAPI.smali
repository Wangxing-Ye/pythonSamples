.class public interface abstract Lcom/unipay/account/AccountAPI;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;,
        Lcom/unipay/account/AccountAPI$NoAccountLoggedInException;,
        Lcom/unipay/account/AccountAPI$AccountAlreadyLoggedInException;,
        Lcom/unipay/account/AccountAPI$BusyException;,
        Lcom/unipay/account/AccountAPI$NotInitializedException;,
        Lcom/unipay/account/AccountAPI$AlreadyInitializedException;,
        Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;,
        Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;,
        Lcom/unipay/account/AccountAPI$OnLogoutResultListener;,
        Lcom/unipay/account/AccountAPI$OnLoginResultListener;,
        Lcom/unipay/account/AccountAPI$OnInitResultListener;
    }
.end annotation


# static fields
.field public static final API_VERSION:I = 0x3

.field public static final CODE_ANDROID_SDK_VERSION_TOOOLD:I = -0x7

.field public static final CODE_BUSY:I = -0x2

.field public static final CODE_FAILURE:I = -0x1

.field public static final CODE_INSUFFICIENT_FUNDS:I = -0x69

.field public static final CODE_NOT_CORRECTLY_INITED:I = -0x3

.field public static final CODE_NO_ACCOUNT:I = -0x5

.field public static final CODE_REFRESH_TOKEN_NOT_FOUND:I = -0x65

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_USER_CANCELED:I = -0x4

.field public static final CODE_USER_ORDER_BIZ_NOT_FOUND:I = -0x6

.field public static final MSG_ACCOUNT_SWITCH_IND:I = 0x2713

.field public static final MSG_ERROR_IND:I = 0x3f0

.field public static final MSG_LOGIN_RESULT:I = 0x2711

.field public static final MSG_LOGOUT_IND:I = 0x2712

.field public static final MSG_LOGOUT_RESULT:I = 0x3ef

.field public static final MSG_REFRESH_ACCESS_TOKEN:I = 0x3ec

.field public static final MSG_REFRESH_POINT:I = 0x3ee

.field public static final MSG_WOPAYVERIFY_RESULT:I = 0x3ed

.field public static final SCREEN_ORIENTATION_AUTO:I = 0x0

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x4

.field public static final SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x3


# virtual methods
.method public abstract accountLogin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end method

.method public abstract call(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract enableFloaticon(Z)V
.end method

.method public abstract enterUsercenter(Landroid/content/Context;)V
.end method

.method public abstract exitSDK()V
.end method

.method public abstract getClientInfo()Lcom/unipay/account/ClientInfo;
.end method

.method public abstract getCurrentUserInfo()Lcom/unipay/account/UserInfo;
.end method

.method public abstract getScreenOrientation()I
.end method

.method public abstract invoke(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Z
.end method

.method public abstract isLoggined()Z
.end method

.method public abstract login(Landroid/content/Context;Lcom/unipay/account/AccountAPI$OnLoginResultListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unipay/account/AccountAPI$BusyException;
        }
    .end annotation
.end method

.method public abstract login(Landroid/os/Handler;)V
.end method

.method public abstract logout(Landroid/content/Context;Lcom/unipay/account/AccountAPI$OnLogoutResultListener;)V
.end method

.method public abstract queryUserOrderBiz(Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;)V
.end method

.method public abstract refreshAccessToken(Landroid/os/Handler;)V
.end method

.method public abstract refreshPoint(Landroid/os/Handler;)V
.end method

.method public abstract setAccountStatusChangedHandler(Landroid/os/Handler;)V
.end method

.method public abstract setAccountStatusChangedListener(Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;)V
.end method

.method public abstract setScreenOrientation(I)V
.end method

.method public abstract switchAccount(Landroid/content/Context;Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;)V
.end method

.method public abstract verifyAccountForWoPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
.end method
