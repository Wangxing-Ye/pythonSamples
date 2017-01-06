.class public Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;
.super Landroid/app/AlertDialog$Builder;
.source "SDKAlertDialog.java"


# instance fields
.field private column_id:Ljava/lang/String;

.field private exdata:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private servicetext:Ljava/lang/String;

.field private taskType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->gameName:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->itemName:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 55
    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$1;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$1;-><init>(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog$2;-><init>(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)V

    invoke-virtual {p0, v0, v1}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->taskType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->column_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->exdata:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public setColumn_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "column_id"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->column_id:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setExdata(Ljava/lang/String;)V
    .locals 0
    .param p1, "exdata"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->exdata:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameName"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->gameName:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->itemName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->price:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setServiceText(Ljava/lang/String;)V
    .locals 0
    .param p1, "servicetext"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->servicetext:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTaskType(Ljava/lang/String;)V
    .locals 0
    .param p1, "taskType"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->taskType:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public show()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 77
    const-string v0, "\u51c6\u5907\u8d2d\u4e70{gamename}\u7684{itemname}\u9053\u5177\uff0c\u4ef7\u683c{price}\u5143\u3002"

    .line 78
    .local v0, "titleTemplet":Ljava/lang/String;
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->gameName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->itemName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 80
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->price:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 81
    const-string v1, "{gamename}"

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->gameName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "{itemname}"

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->itemName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 83
    const-string v1, "{price}"

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->price:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->servicetext:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->servicetext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 90
    :cond_0
    invoke-virtual {p0, v0}, Lcom/cynosure/paymentsdk/layout/SDKAlertDialog;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 93
    :cond_1
    invoke-super {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
