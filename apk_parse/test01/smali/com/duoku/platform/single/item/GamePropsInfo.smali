.class public Lcom/duoku/platform/single/item/GamePropsInfo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private price:Ljava/lang/String;

.field private propsId:Ljava/lang/String;

.field private thirdpay:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private userdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->propsId:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->price:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->userdata:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getPropsId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->propsId:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPay()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->thirdpay:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUserdata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->userdata:Ljava/lang/String;

    return-object v0
.end method

.method public setThirdPay(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/GamePropsInfo;->thirdpay:Ljava/lang/String;

    return-void
.end method
