.class public Lcom/unipay/account/ClientInfo;
.super Ljava/lang/Object;


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unipay/account/ClientInfo;->clientId:Ljava/lang/String;

    iput-object p2, p0, Lcom/unipay/account/ClientInfo;->clientKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/ClientInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/ClientInfo;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/ClientInfo;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/ClientInfo;->clientKey:Ljava/lang/String;

    return-void
.end method
