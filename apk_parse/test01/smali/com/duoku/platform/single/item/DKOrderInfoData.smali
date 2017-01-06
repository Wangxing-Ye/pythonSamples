.class public Lcom/duoku/platform/single/item/DKOrderInfoData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private dkOrderId:Ljava/lang/String;

.field private dkOrderPayChannel:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

.field private dkOrderPrice:Ljava/lang/String;

.field private dkOrderProductId:Ljava/lang/String;

.field private dkOrderStatus:Lcom/duoku/platform/single/item/DKOrderStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/item/DKOrderStatus;Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderId:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderProductId:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderPrice:Ljava/lang/String;

    iput-object p4, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderStatus:Lcom/duoku/platform/single/item/DKOrderStatus;

    iput-object p5, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderPayChannel:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    return-void
.end method


# virtual methods
.method public getDkOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getDkOrderPayChannel()Lcom/duoku/platform/single/item/DKOrderPayChannelData;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderPayChannel:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    return-object v0
.end method

.method public getDkOrderPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getDkOrderProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderProductId:Ljava/lang/String;

    return-object v0
.end method

.method public getDkOrderStatus()Lcom/duoku/platform/single/item/DKOrderStatus;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderStatus:Lcom/duoku/platform/single/item/DKOrderStatus;

    return-object v0
.end method

.method public setDkOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderId:Ljava/lang/String;

    return-void
.end method

.method public setDkOrderPayChannel(Lcom/duoku/platform/single/item/DKOrderPayChannelData;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderPayChannel:Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    return-void
.end method

.method public setDkOrderPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderPrice:Ljava/lang/String;

    return-void
.end method

.method public setDkOrderProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderProductId:Ljava/lang/String;

    return-void
.end method

.method public setDkOrderStatus(Lcom/duoku/platform/single/item/DKOrderStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKOrderInfoData;->dkOrderStatus:Lcom/duoku/platform/single/item/DKOrderStatus;

    return-void
.end method
