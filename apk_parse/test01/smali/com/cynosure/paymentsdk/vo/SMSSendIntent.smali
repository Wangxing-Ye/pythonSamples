.class public Lcom/cynosure/paymentsdk/vo/SMSSendIntent;
.super Ljava/lang/Object;
.source "SMSSendIntent.java"


# instance fields
.field private content:Ljava/lang/String;

.field private exdata:Ljava/lang/String;

.field private number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/SMSSendIntent;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getExdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/SMSSendIntent;->exdata:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/SMSSendIntent;->number:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/SMSSendIntent;->content:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setExdata(Ljava/lang/String;)V
    .locals 0
    .param p1, "exdata"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/SMSSendIntent;->exdata:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/SMSSendIntent;->number:Ljava/lang/String;

    .line 13
    return-void
.end method
