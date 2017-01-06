.class public Lmm/purchasesdk/Purchase;
.super Ljava/lang/Object;
.source "n"


# static fields
.field private static mPurchase:Lmm/purchasesdk/Purchase;


# instance fields
.field private synthetic break:Ljava/lang/String;

.field private synthetic goto:Lmm/purchasesdk/core/IPurchase;

.field private synthetic this:Ljava/lang/String;

.field private synthetic true:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    .line 174
    return-void
.end method

.method public static else(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v5, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v2, v0

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_1
    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    xor-int/2addr v0, v7

    xor-int/lit8 v0, v0, 0x40

    int-to-char v0, v0

    aput-char v0, v5, v2

    if-ltz v6, :cond_0

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v0, v2

    xor-int/lit8 v0, v0, 0x5f

    int-to-char v7, v0

    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v0, v3, -0x1

    aput-char v7, v5, v6

    if-gez v0, :cond_2

    move v0, v1

    :cond_2
    move v3, v0

    move v0, v2

    goto :goto_0
.end method

.method public static getDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 220
    invoke-static {p0}, Lmm/purchasesdk/core/PurchaseCode;->getDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lmm/purchasesdk/Purchase;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchase:Lmm/purchasesdk/Purchase;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lmm/purchasesdk/Purchase;

    invoke-direct {v0}, Lmm/purchasesdk/Purchase;-><init>()V

    sput-object v0, Lmm/purchasesdk/Purchase;->mPurchase:Lmm/purchasesdk/Purchase;

    .line 87
    :cond_0
    sget-object v0, Lmm/purchasesdk/Purchase;->mPurchase:Lmm/purchasesdk/Purchase;

    return-object v0
.end method

.method public static getReason(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p0}, Lmm/purchasesdk/core/PurchaseCode;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private synthetic initPurchase(Landroid/content/Context;)V
    .locals 5
    .param p1, "a"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    if-nez v1, :cond_0

    .line 475
    const-string v1, "ZE\u0010QYAYMWZT]RB\u0005W`bO\u001b}GN@_IMDo\\H@"

    invoke-static {v1}, Lmm/purchasesdk/Purchase;->else(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/cmcc/security/CmccInterface;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 447
    .local v0, "a":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .end local p1    # "a":Landroid/content/Context;
    move-result-object v1

    check-cast v1, Lmm/purchasesdk/core/IPurchase;

    iput-object v1, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    .line 296
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    iget-object v2, p0, Lmm/purchasesdk/Purchase;->break:Ljava/lang/String;

    iget-object v3, p0, Lmm/purchasesdk/Purchase;->this:Ljava/lang/String;

    iget v4, p0, Lmm/purchasesdk/Purchase;->true:I

    invoke-interface {v1, v2, v3, v4}, Lmm/purchasesdk/core/IPurchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 438
    iget-object v1, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v1, p1}, Lmm/purchasesdk/core/IPurchase;->initSo(Landroid/content/Context;)V

    .line 333
    .end local v0    # "a":Ljava/lang/Class;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearCache(Landroid/content/Context;)V
    .locals 1
    .param p1, "a"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->initPurchase(Landroid/content/Context;)V

    .line 202
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1}, Lmm/purchasesdk/core/IPurchase;->clearCache(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public enableCache(Z)V
    .locals 1
    .param p1, "a"    # Z

    .prologue
    .line 169
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1}, Lmm/purchasesdk/core/IPurchase;->enableCache(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public getSDKVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "a"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->initPurchase(Landroid/content/Context;)V

    .line 228
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1}, Lmm/purchasesdk/core/IPurchase;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 1
    .param p2, "a"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->initPurchase(Landroid/content/Context;)V

    .line 199
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1, p2}, Lmm/purchasesdk/core/IPurchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V

    .line 112
    return-void
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 9
    .param p6, "a"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 393
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p8, "a"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->initPurchase(Landroid/content/Context;)V

    .line 637
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lmm/purchasesdk/core/IPurchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;ILmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7
    .param p4, "a"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;IZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7
    .param p5, "a"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public order(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    .locals 7
    .param p3, "a"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 1
    .param p4, "a"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->initPurchase(Landroid/content/Context;)V

    .line 65
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1, p2, p3, p4}, Lmm/purchasesdk/core/IPurchase;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V

    .line 110
    return-void
.end method

.method public query(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 1
    .param p3, "a"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lmm/purchasesdk/Purchase;->query(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V

    .line 182
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "a"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    return-void
.end method

.method public setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lmm/purchasesdk/Purchase;->break:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lmm/purchasesdk/Purchase;->this:Ljava/lang/String;

    .line 117
    iput p3, p0, Lmm/purchasesdk/Purchase;->true:I

    .line 74
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1, p2, p3}, Lmm/purchasesdk/core/IPurchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    :cond_0
    return-void
.end method

.method public setTimeout(II)V
    .locals 1
    .param p2, "a"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1, p2}, Lmm/purchasesdk/core/IPurchase;->setTimeout(II)V

    .line 5
    :cond_0
    return-void
.end method

.method public unsubscribe(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V
    .locals 1
    .param p3, "a"    # Lmm/purchasesdk/OnPurchaseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 564
    invoke-direct {p0, p1}, Lmm/purchasesdk/Purchase;->initPurchase(Landroid/content/Context;)V

    .line 242
    iget-object v0, p0, Lmm/purchasesdk/Purchase;->goto:Lmm/purchasesdk/core/IPurchase;

    invoke-interface {v0, p1, p2, p3}, Lmm/purchasesdk/core/IPurchase;->unsubscribe(Landroid/content/Context;Ljava/lang/String;Lmm/purchasesdk/OnPurchaseListener;)V

    .line 280
    return-void
.end method
