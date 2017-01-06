.class public Lcom/cynosure/payment3rd/Pay_yinbeike;
.super Lcom/cynosure/payment3rd/ThirdPartPayClass;
.source "Pay_yinbeike.java"


# instance fields
.field private _appKey:Ljava/lang/String;

.field private _channelId:Ljava/lang/String;

.field private _cpName:Ljava/lang/String;

.field private _customorderno:Ljava/lang/String;

.field private _gameName:Ljava/lang/String;

.field private _money:Ljava/lang/String;

.field private _param:[Ljava/lang/String;

.field private _productId:Ljava/lang/String;

.field private _productName:Ljava/lang/String;


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
    iput-object p2, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    .line 39
    iput-object p1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkMD5:Ljava/lang/String;

    .line 42
    iput-boolean p4, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_isNeedClassLoader:Z

    .line 43
    iput-object p5, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    .line 44
    const-string v0, "Pay_yinbeike"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void

    .line 40
    nop

    :array_0
    .array-data 1
        0x79t
        0x69t
        0x6et
        0x62t
        0x65t
        0x69t
        0x6bt
        0x65t
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
    .line 29
    invoke-direct {p0}, Lcom/cynosure/payment3rd/ThirdPartPayClass;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    .line 31
    iput-object p1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_context:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_sdkName:Ljava/lang/String;

    .line 33
    iput-boolean p3, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_isNeedClassLoader:Z

    .line 34
    const-string v0, "Pay_yinbeike"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    return-void

    .line 32
    nop

    :array_0
    .array-data 1
        0x79t
        0x69t
        0x6et
        0x62t
        0x65t
        0x69t
        0x6bt
        0x65t
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
    .locals 4

    .prologue
    .line 124
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v1, "Pay_yinbeike"

    const-string v2, "doPay"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "appKey"

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_appKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v1, "productId"

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_productId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "productName"

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_productName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "money"

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_money:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "gameName"

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_gameName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "cpName"

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_cpName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "customorderno"

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_customorderno:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "channelId"

    iget-object v2, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_channelId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "param"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_appKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_productId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_productName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_money:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_gameName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_cpName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_customorderno:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_channelId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_activity:Landroid/app/Activity;

    new-instance v2, Lcom/cynosure/payment3rd/Pay_yinbeike$1;

    invoke-direct {v2, p0}, Lcom/cynosure/payment3rd/Pay_yinbeike$1;-><init>(Lcom/cynosure/payment3rd/Pay_yinbeike;)V

    invoke-static {v1, v0, v2}, Lcom/sshell/minismspay/SshellPayment;->getPurchaseOrder(Landroid/app/Activity;Ljava/util/Map;Lcom/sshell/minismspay/SshellPayListener;)V

    goto/16 :goto_0
.end method

.method public initParam()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x5

    const/4 v0, 0x0

    .line 50
    iget-object v1, p0, Lcom/cynosure/payment3rd/ThirdPartPayClass;->_activity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    array-length v1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_appKey:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v5

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_productId:Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v6

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_productName:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_money:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_gameName:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_cpName:Ljava/lang/String;

    .line 98
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_customorderno:Ljava/lang/String;

    .line 104
    iget-object v1, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_param:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/cynosure/payment3rd/Pay_yinbeike;->_channelId:Ljava/lang/String;

    .line 111
    const-string v0, "Pay_yinbeike"

    const-string v1, "initParam"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public initPay()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "Pay_yinbeike"

    const-string v1, "initPay"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method
