.class public Lcom/cynosure/payment3rd/Pay_weimi;
.super Lcom/cynosure/payment3rd/ThirdPartPayClass;
.source "Pay_weimi.java"


# instance fields
.field private _channel:Ljava/lang/String;

.field private _extdata:Ljava/lang/String;

.field private _mobilecode:Ljava/lang/String;

.field private _param:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "md5"    # Ljava/lang/String;
    .param p4, "isNeedClassLoader"    # Z
    .param p5, "param"    # [Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    .line 34
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkName:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkMD5:Ljava/lang/String;

    .line 36
    iput-boolean p4, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_isNeedClassLoader:Z

    .line 37
    iput-object p5, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_param:[Ljava/lang/String;

    .line 38
    return-void

    .line 34
    :array_0
    .array-data 1
        0x77t
        0x65t
        0x69t
        0x6dt
        0x69t
        0x73t
        0x64t
        0x6bt
        0x2et
        0x6at
        0x61t
        0x72t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "isNeedClassLoader"    # Z

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    .line 27
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkName:Ljava/lang/String;

    .line 28
    iput-boolean p3, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_isNeedClassLoader:Z

    .line 29
    return-void

    .line 27
    :array_0
    .array-data 1
        0x77t
        0x65t
        0x69t
        0x6dt
        0x69t
        0x73t
        0x64t
        0x6bt
        0x2et
        0x6at
        0x61t
        0x72t
    .end array-data
.end method


# virtual methods
.method public doPay()V
    .locals 6

    .prologue
    .line 126
    const-string v1, "3rdpay"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_mobilecode:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_extdata:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v0, Lcom/mobilepay/util/Mobilepay;

    invoke-direct {v0}, Lcom/mobilepay/util/Mobilepay;-><init>()V

    .line 128
    .local v0, "pay":Lcom/mobilepay/util/Mobilepay;
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_mobilecode:Ljava/lang/String;

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_channel:Ljava/lang/String;

    iget-object v4, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_extdata:Ljava/lang/String;

    new-instance v5, Lcom/cynosure/payment3rd/Pay_weimi$1;

    invoke-direct {v5, p0}, Lcom/cynosure/payment3rd/Pay_weimi$1;-><init>(Lcom/cynosure/payment3rd/Pay_weimi;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/mobilepay/util/Mobilepay;->MobilepayBuy(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mobilepay/util/IWimipay$BuyListener;)I

    .line 136
    const-string v1, "3rdpay"

    const-string v2, "ok"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public initParam()Z
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 43
    iget-object v1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v0

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_param:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 50
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_param:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_param:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_mobilecode:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_param:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_param:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_channel:Ljava/lang/String;

    .line 62
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_param:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_param:[Ljava/lang/String;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_extdata:Ljava/lang/String;

    .line 70
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initPay()V
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_weimi;->_activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/security/Service/WmService;->startService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 148
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
