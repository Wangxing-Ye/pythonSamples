.class public Lcom/sns/game/database/bean/UserTop;
.super Ljava/lang/Object;
.source "UserTop.java"


# instance fields
.field private gRankNum:I

.field private goldNum:I

.field private kRankNum:I

.field private killNum:I

.field private nickName:Ljava/lang/String;

.field private serverId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGoldNum()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/sns/game/database/bean/UserTop;->goldNum:I

    return v0
.end method

.method public getKillNum()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/sns/game/database/bean/UserTop;->killNum:I

    return v0
.end method

.method public getNickName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sns/game/database/bean/UserTop;->nickName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/sns/game/database/bean/UserTop;->serverId:I

    return v0
.end method

.method public getgRankNum()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/sns/game/database/bean/UserTop;->gRankNum:I

    return v0
.end method

.method public getkRankNum()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sns/game/database/bean/UserTop;->kRankNum:I

    return v0
.end method

.method public set(Lcom/sns/game/database/bean/UserTop;)V
    .locals 1
    .param p1, "uTop"    # Lcom/sns/game/database/bean/UserTop;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getGoldNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserTop;->setGoldNum(I)V

    .line 36
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getgRankNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserTop;->setgRankNum(I)V

    .line 37
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getKillNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserTop;->setKillNum(I)V

    .line 38
    invoke-virtual {p1}, Lcom/sns/game/database/bean/UserTop;->getkRankNum()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sns/game/database/bean/UserTop;->setkRankNum(I)V

    .line 39
    return-void
.end method

.method public set(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "split":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sns/game/database/bean/UserTop;->serverId:I

    .line 27
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/sns/game/database/bean/UserTop;->nickName:Ljava/lang/String;

    .line 28
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sns/game/database/bean/UserTop;->gRankNum:I

    .line 29
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sns/game/database/bean/UserTop;->goldNum:I

    .line 30
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sns/game/database/bean/UserTop;->kRankNum:I

    .line 31
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sns/game/database/bean/UserTop;->killNum:I

    .line 32
    return-void
.end method

.method public setGoldNum(I)V
    .locals 0
    .param p1, "goldNum"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/sns/game/database/bean/UserTop;->goldNum:I

    .line 70
    return-void
.end method

.method public setKillNum(I)V
    .locals 0
    .param p1, "killNum"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/sns/game/database/bean/UserTop;->killNum:I

    .line 73
    return-void
.end method

.method public setNickName(Ljava/lang/String;)V
    .locals 0
    .param p1, "nickName"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sns/game/database/bean/UserTop;->nickName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setServerId(I)V
    .locals 0
    .param p1, "serverId"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/sns/game/database/bean/UserTop;->serverId:I

    .line 61
    return-void
.end method

.method public setgRankNum(I)V
    .locals 0
    .param p1, "gRankNum"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/sns/game/database/bean/UserTop;->gRankNum:I

    .line 64
    return-void
.end method

.method public setkRankNum(I)V
    .locals 0
    .param p1, "kRankNum"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/sns/game/database/bean/UserTop;->kRankNum:I

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 16
    iget v1, p0, Lcom/sns/game/database/bean/UserTop;->serverId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/sns/game/database/bean/UserTop;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 18
    iget v1, p0, Lcom/sns/game/database/bean/UserTop;->gRankNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 19
    iget v1, p0, Lcom/sns/game/database/bean/UserTop;->goldNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 20
    iget v1, p0, Lcom/sns/game/database/bean/UserTop;->kRankNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 21
    iget v1, p0, Lcom/sns/game/database/bean/UserTop;->killNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15
    return-object v0
.end method
