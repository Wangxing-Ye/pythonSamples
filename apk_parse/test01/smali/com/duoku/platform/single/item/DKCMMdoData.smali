.class public Lcom/duoku/platform/single/item/DKCMMdoData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static isCardgameFlag:Z


# instance fields
.field private channelNum:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private dest:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private propsId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/duoku/platform/single/item/DKCMMdoData;->isCardgameFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->propsId:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->price:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->code:Ljava/lang/String;

    iput-object p4, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->dest:Ljava/lang/String;

    iput-object p5, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->channelNum:Ljava/lang/String;

    return-void
.end method

.method public static isCardgameFlag()Z
    .locals 1

    sget-boolean v0, Lcom/duoku/platform/single/item/DKCMMdoData;->isCardgameFlag:Z

    return v0
.end method

.method public static setCardgameFlag(Z)V
    .locals 0

    sput-boolean p0, Lcom/duoku/platform/single/item/DKCMMdoData;->isCardgameFlag:Z

    return-void
.end method


# virtual methods
.method public getChannelNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->channelNum:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->dest:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPropsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->propsId:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->channelNum:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->code:Ljava/lang/String;

    return-void
.end method

.method public setDest(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->dest:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->price:Ljava/lang/String;

    return-void
.end method

.method public setPropsId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMdoData;->propsId:Ljava/lang/String;

    return-void
.end method
