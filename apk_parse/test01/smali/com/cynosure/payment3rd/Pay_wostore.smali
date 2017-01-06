.class public Lcom/cynosure/payment3rd/Pay_wostore;
.super Lcom/cynosure/payment3rd/ThirdPartPayClass;
.source "Pay_wostore.java"


# instance fields
.field private _appKey:Ljava/lang/String;

.field private _appName:Ljava/lang/String;

.field private _cid:Ljava/lang/String;

.field private _cpchannel:Ljava/lang/String;

.field private _itemName:Ljava/lang/String;

.field private _money:Ljava/lang/String;

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
    .line 37
    invoke-direct {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    .line 41
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkName:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkMD5:Ljava/lang/String;

    .line 43
    iput-boolean p4, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_isNeedClassLoader:Z

    .line 44
    iput-object p5, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    .line 45
    return-void

    .line 41
    :array_0
    .array-data 1
        0x77t
        0x6ft
        0x73t
        0x74t
        0x6ft
        0x72t
        0x65t
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
    .line 29
    invoke-direct {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    .line 33
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkName:Ljava/lang/String;

    .line 34
    iput-boolean p3, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_isNeedClassLoader:Z

    .line 35
    return-void

    .line 33
    :array_0
    .array-data 1
        0x77t
        0x6ft
        0x73t
        0x74t
        0x6ft
        0x72t
        0x65t
        0x2et
        0x6at
        0x61t
        0x72t
    .end array-data
.end method

.method static synthetic access$0(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_money:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_itemName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_appKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_cid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cynosure/payment3rd/Pay_wostore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_cpchannel:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doPay()V
    .locals 9

    .prologue
    .line 242
    :try_start_0
    const-string v0, "3rdpay"

    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_context:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v0, "3rdpay"

    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v0, "3rdpay"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_money:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 246
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 247
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_itemName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 249
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_appKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 250
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_cid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_cpchannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Lcom/ld/pay/PayManager;->getInstance()Lcom/ld/pay/PayManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_money:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_itemName:Ljava/lang/String;

    new-instance v3, Lcom/cynosure/payment3rd/Pay_wostore$1;

    invoke-direct {v3, p0}, Lcom/cynosure/payment3rd/Pay_wostore$1;-><init>(Lcom/cynosure/payment3rd/Pay_wostore;)V

    .line 292
    iget-object v4, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_appKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_appName:Ljava/lang/String;

    iget-object v6, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_cid:Ljava/lang/String;

    iget-object v7, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_cpchannel:Ljava/lang/String;

    .line 257
    invoke-virtual/range {v0 .. v7}, Lcom/ld/pay/PayManager;->pay(ILjava/lang/String;Lcom/ld/pay/LdPayCallBack;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v8

    .line 296
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    invoke-static {v8}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initParam()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_money:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_itemName:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_appKey:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_appName:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_cid:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_param:[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_cpchannel:Ljava/lang/String;

    .line 101
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public initPay()V
    .locals 5

    .prologue
    .line 106
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 108
    :try_start_0
    invoke-static {}, Lcom/ld/pay/PayManager;->getInstance()Lcom/ld/pay/PayManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_wostore;->_activity:Landroid/app/Activity;

    const-string v3, "SNSKJ"

    const-string v4, "HJRF32DE"

    invoke-virtual {v1, v2, v3, v4}, Lcom/ld/pay/PayManager;->initSDK(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
