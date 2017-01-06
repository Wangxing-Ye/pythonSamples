.class public Lcom/duoku/platform/single/item/DKCMMMData;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SKIN_SYSTEM_ONE:I = 0x1

.field public static final SKIN_SYSTEM_THREE:I = 0x3

.field public static final SKIN_SYSTEM_TWO:I = 0x2


# instance fields
.field private MMid:Ljava/lang/String;

.field private MMkey:Ljava/lang/String;

.field private SKIN:I

.field private paycode:Ljava/lang/String;

.field private userdata:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/single/item/DKCMMMData;->SKIN:I

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/item/DKCMMMData;->paycode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/item/DKCMMMData;->userdata:Ljava/lang/String;

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMMData;->MMid:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/single/item/DKCMMMData;->MMkey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMMid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMMData;->MMid:Ljava/lang/String;

    return-object v0
.end method

.method public getMMkey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMMData;->MMkey:Ljava/lang/String;

    return-object v0
.end method

.method public getPaycode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMMData;->paycode:Ljava/lang/String;

    return-object v0
.end method

.method public getSKIN()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/item/DKCMMMData;->SKIN:I

    return v0
.end method

.method public getUserdata()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/DKCMMMData;->userdata:Ljava/lang/String;

    return-object v0
.end method

.method public setPaycode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMMData;->paycode:Ljava/lang/String;

    return-void
.end method

.method public setSKIN(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/item/DKCMMMData;->SKIN:I

    return-void
.end method

.method public setUserdata(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/item/DKCMMMData;->userdata:Ljava/lang/String;

    return-void
.end method
