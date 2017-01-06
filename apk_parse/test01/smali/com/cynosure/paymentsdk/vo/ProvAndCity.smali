.class public Lcom/cynosure/paymentsdk/vo/ProvAndCity;
.super Ljava/lang/Object;
.source "ProvAndCity.java"


# instance fields
.field private city:Ljava/lang/String;

.field private prov:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getProv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->prov:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->city:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setProv(Ljava/lang/String;)V
    .locals 0
    .param p1, "prov"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/ProvAndCity;->prov:Ljava/lang/String;

    .line 13
    return-void
.end method
