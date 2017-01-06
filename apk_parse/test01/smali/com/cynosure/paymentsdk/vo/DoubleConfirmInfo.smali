.class public Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;
.super Ljava/lang/Object;
.source "DoubleConfirmInfo.java"


# instance fields
.field private column_id:Ljava/lang/String;

.field private exdata:Ljava/lang/String;

.field private gameName:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private servicetext:Ljava/lang/String;

.field private taskType:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->gameName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->itemName:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->servicetext:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->title:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getColumn_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->column_id:Ljava/lang/String;

    return-object v0
.end method

.method public getExdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->exdata:Ljava/lang/String;

    return-object v0
.end method

.method public getGameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getServicetext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->servicetext:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->taskType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setColumn_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->column_id:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setExdata(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->exdata:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->gameName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->itemName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->price:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setServiceText(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->servicetext:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setServicetext(Ljava/lang/String;)V
    .locals 0
    .param p1, "servicetext"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->servicetext:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setTaskType(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->taskType:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/DoubleConfirmInfo;->title:Ljava/lang/String;

    .line 61
    return-void
.end method
