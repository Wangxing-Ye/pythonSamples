.class public Lcom/unipay/account/UserInfo;
.super Ljava/lang/Object;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private account:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private level:I

.field private nickname:Ljava/lang/String;

.field private point:I

.field private portraitUrl:Ljava/lang/String;

.field private score:I

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;

.field private userType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->userType:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->userId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->account:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->nickname:Ljava/lang/String;

    iput v1, p0, Lcom/unipay/account/UserInfo;->level:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->accessToken:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->portraitUrl:Ljava/lang/String;

    iput v1, p0, Lcom/unipay/account/UserInfo;->point:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->imsi:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->gender:Ljava/lang/String;

    iput v1, p0, Lcom/unipay/account/UserInfo;->score:I

    const-string v0, ""

    iput-object v0, p0, Lcom/unipay/account/UserInfo;->userName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/unipay/account/UserInfo;->level:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()I
    .locals 1

    iget v0, p0, Lcom/unipay/account/UserInfo;->point:I

    return v0
.end method

.method public getPortraitUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->portraitUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    iget v0, p0, Lcom/unipay/account/UserInfo;->score:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UserInfo;->userType:Ljava/lang/String;

    return-object v0
.end method

.method public isMember()Z
    .locals 2

    const-string v0, "10"

    iget-object v1, p0, Lcom/unipay/account/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->accessToken:Ljava/lang/String;

    return-void
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->account:Ljava/lang/String;

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->gender:Ljava/lang/String;

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->imsi:Ljava/lang/String;

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/account/UserInfo;->level:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPoint(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/account/UserInfo;->point:I

    return-void
.end method

.method public setPortraitUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->portraitUrl:Ljava/lang/String;

    return-void
.end method

.method public setScore(I)V
    .locals 0

    iput p1, p0, Lcom/unipay/account/UserInfo;->score:I

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->userName:Ljava/lang/String;

    return-void
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UserInfo;->userType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "UserInfo{userId(%s), nickname(%s), level(%d), point(%d), portraitUrl(%s), imsi(%s), account(%s), gender(%s), score(%d), userName(%s)}"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/unipay/account/UserInfo;->userId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/unipay/account/UserInfo;->nickname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/unipay/account/UserInfo;->level:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/unipay/account/UserInfo;->point:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/unipay/account/UserInfo;->portraitUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/unipay/account/UserInfo;->imsi:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/unipay/account/UserInfo;->account:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/unipay/account/UserInfo;->gender:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget v3, p0, Lcom/unipay/account/UserInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/unipay/account/UserInfo;->userName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
