.class public Lcom/cynosure/payment3rd/PayFactory;
.super Ljava/lang/Object;
.source "PayFactory.java"


# instance fields
.field private init3rdNameList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wostore"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "weimisdk"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cynosure/payment3rd/PayFactory;->init3rdNameList:[Ljava/lang/String;

    .line 9
    return-void
.end method

.method private getThirdPartPay(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/cynosure/payment3rd/ThirdPartPayClass;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "thirdPartName"    # Ljava/lang/String;
    .param p4, "md5"    # Ljava/lang/String;
    .param p5, "param"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 45
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    const-string v0, "weimisdk"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lcom/cynosure/payment3rd/Pay_weimi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/payment3rd/Pay_weimi;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 63
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const-string v0, "wostore"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Lcom/cynosure/payment3rd/Pay_wostore;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/payment3rd/Pay_wostore;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doThirdPartInit(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/cynosure/payment3rd/PayFactory;->init3rdNameList:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 27
    return-void

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    .local v1, "temp3rd":Lcom/cynosure/payment3rd/ThirdPartPayClass;
    iget-object v2, p0, Lcom/cynosure/payment3rd/PayFactory;->init3rdNameList:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "wostore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    new-instance v1, Lcom/cynosure/payment3rd/Pay_wostore;

    .end local v1    # "temp3rd":Lcom/cynosure/payment3rd/ThirdPartPayClass;
    invoke-direct {v1, p1, p2, v4}, Lcom/cynosure/payment3rd/Pay_wostore;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .line 23
    .restart local v1    # "temp3rd":Lcom/cynosure/payment3rd/ThirdPartPayClass;
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 24
    invoke-virtual {v1}, Lcom/cynosure/payment3rd/ThirdPartPayClass;->init()V

    .line 14
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 19
    :cond_3
    iget-object v2, p0, Lcom/cynosure/payment3rd/PayFactory;->init3rdNameList:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, "weimisdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    new-instance v1, Lcom/cynosure/payment3rd/Pay_weimi;

    .end local v1    # "temp3rd":Lcom/cynosure/payment3rd/ThirdPartPayClass;
    invoke-direct {v1, p1, p2, v4}, Lcom/cynosure/payment3rd/Pay_weimi;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    .restart local v1    # "temp3rd":Lcom/cynosure/payment3rd/ThirdPartPayClass;
    goto :goto_1
.end method

.method public doThirdPartPay(Landroid/content/Context;Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "Script"    # [Ljava/lang/String;

    .prologue
    .line 30
    array-length v0, p3

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 31
    const/4 v0, 0x1

    aget-object v3, p3, v0

    .line 32
    .local v3, "functionName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cynosure/payment3rd/PayFactory;->getThirdPartPay(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/cynosure/payment3rd/ThirdPartPayClass;

    move-result-object v6

    .line 34
    .local v6, "payClass":Lcom/cynosure/payment3rd/ThirdPartPayClass;
    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {v6}, Lcom/cynosure/payment3rd/ThirdPartPayClass;->pay()V

    .line 42
    .end local v3    # "functionName":Ljava/lang/String;
    .end local v6    # "payClass":Lcom/cynosure/payment3rd/ThirdPartPayClass;
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v0, "script error"

    invoke-static {v0}, Lcom/cynosure/paymentsdk/umengSDKInterface;->reportError(Ljava/lang/String;)V

    goto :goto_0
.end method
