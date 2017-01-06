.class public Lcom/cynosure/paymentsdk/vo/ChargingInfo;
.super Ljava/lang/Object;
.source "ChargingInfo.java"


# instance fields
.field private gameName:Ljava/lang/String;

.field private itemName:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private serviceText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->title:Ljava/lang/String;

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->gameName:Ljava/lang/String;

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->itemName:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->serviceText:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public getGameName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->gameName:Ljava/lang/String;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->itemName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->serviceText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setGameName(Ljava/lang/String;)V
    .locals 0
    .param p1, "gameName"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->gameName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 0
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->itemName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->price:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setServiceText(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceText"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->serviceText:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/ChargingInfo;->title:Ljava/lang/String;

    .line 16
    return-void
.end method
