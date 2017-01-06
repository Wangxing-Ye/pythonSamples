.class public Lcom/cynosure/paymentsdk/vo/Block;
.super Ljava/lang/Object;
.source "Block.java"


# instance fields
.field private blockContent:Ljava/lang/String;

.field private blockNumber:Ljava/lang/String;

.field private blockTimeout:Ljava/lang/String;

.field private block_ID:Ljava/lang/String;

.field private isNeedReply:Ljava/lang/String;

.field private replyInfo:Ljava/lang/String;

.field private replyTimeout:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlockContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Block;->blockContent:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Block;->blockNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockTimeout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Block;->blockTimeout:Ljava/lang/String;

    return-object v0
.end method

.method public getBlock_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Block;->block_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNeedReply()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Block;->isNeedReply:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Block;->replyInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyTimeout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/Block;->replyTimeout:Ljava/lang/String;

    return-object v0
.end method

.method public setBlockContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "blockContent"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Block;->blockContent:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setBlockNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "blockNumber"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Block;->blockNumber:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setBlockTimeout(Ljava/lang/String;)V
    .locals 0
    .param p1, "blockTimeout"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Block;->blockTimeout:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setBlock_ID(Ljava/lang/String;)V
    .locals 0
    .param p1, "block_ID"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Block;->block_ID:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setIsNeedReply(Ljava/lang/String;)V
    .locals 0
    .param p1, "isNeedReply"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Block;->isNeedReply:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setReplyInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyInfo"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Block;->replyInfo:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setReplyTimeout(Ljava/lang/String;)V
    .locals 0
    .param p1, "replyTimeout"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/Block;->replyTimeout:Ljava/lang/String;

    .line 66
    return-void
.end method
