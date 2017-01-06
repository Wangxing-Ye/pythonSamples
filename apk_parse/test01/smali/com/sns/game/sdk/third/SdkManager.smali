.class public Lcom/sns/game/sdk/third/SdkManager;
.super Ljava/lang/Object;
.source "SdkManager.java"


# static fields
.field public static final SDK_TAG_Cynos:I = 0x1

.field public static final SDK_TAG_NoExist:I = -0x999

.field private static _sdkManager:Lcom/sns/game/sdk/third/SdkManager;


# instance fields
.field private _delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/sns/game/sdk/third/SdkManager;

    invoke-direct {v0}, Lcom/sns/game/sdk/third/SdkManager;-><init>()V

    sput-object v0, Lcom/sns/game/sdk/third/SdkManager;->_sdkManager:Lcom/sns/game/sdk/third/SdkManager;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method private createSdkDelegateTemplate(I)Lcom/sns/game/sdk/third/SdkDelegateTemplate;
    .locals 1
    .param p1, "sdkId"    # I

    .prologue
    .line 76
    packed-switch p1, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 79
    :pswitch_0
    invoke-static {}, Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;->getInstance()Lcom/sns/game/sdk/third/list/CynosTempSdkDelegate;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/sns/game/sdk/third/SdkManager;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/sns/game/sdk/third/SdkManager;->_sdkManager:Lcom/sns/game/sdk/third/SdkManager;

    return-object v0
.end method


# virtual methods
.method public varargs dopay(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "payId"    # I
    .param p3, "delegateCallBack"    # Lcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sns/game/sdk/third/SdkDelegateTemplate;->dopay(Landroid/app/Activity;ILcom/sns/game/sdk/third/ThirdSdkDelegate$BillingResultCallBack;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method public exitGame(Landroid/app/Activity;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Activity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    invoke-interface {v0, p1}, Lcom/sns/game/sdk/third/SdkDelegateTemplate;->exitGame(Landroid/app/Activity;)V

    .line 72
    :cond_0
    return-void
.end method

.method public getPayDescInGame(I)Ljava/lang/String;
    .locals 1
    .param p1, "payId"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    invoke-interface {v0, p1}, Lcom/sns/game/sdk/third/SdkDelegateTemplate;->getPayDescInGame(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPayMoney(I)I
    .locals 1
    .param p1, "payId"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    invoke-interface {v0, p1}, Lcom/sns/game/sdk/third/SdkDelegateTemplate;->getPayMoney(I)I

    move-result v0

    .line 56
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPayMsg(II)Ljava/lang/String;
    .locals 1
    .param p1, "payId"    # I
    .param p2, "tag"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    invoke-interface {v0, p1, p2}, Lcom/sns/game/sdk/third/SdkDelegateTemplate;->getPayMsg(II)Ljava/lang/String;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSdk(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "app"    # Landroid/app/Activity;
    .param p2, "sdkId"    # I

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/sns/game/sdk/third/SdkManager;->createSdkDelegateTemplate(I)Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    .line 31
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/sns/game/sdk/third/SdkManager;->_delegateTemplate:Lcom/sns/game/sdk/third/SdkDelegateTemplate;

    invoke-interface {v0, p1}, Lcom/sns/game/sdk/third/SdkDelegateTemplate;->loadSdk(Landroid/app/Activity;)V

    .line 34
    :cond_0
    return-void
.end method
