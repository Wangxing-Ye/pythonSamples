.class public Lcom/cynosure/paymentsdk/vo/BillingResult;
.super Ljava/lang/Object;
.source "BillingResult.java"


# instance fields
.field private billingResult:Ljava/lang/String;

.field private billingResult_ID:Ljava/lang/String;

.field private column_ID:Ljava/lang/String;

.field private exdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "column_id"    # Ljava/lang/String;
    .param p2, "exdata"    # Ljava/lang/String;
    .param p3, "billingResult"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->column_ID:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->exdata:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->billingResult:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getBillingResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->billingResult:Ljava/lang/String;

    return-object v0
.end method

.method public getBillingResult_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->billingResult_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getColumn_ID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->column_ID:Ljava/lang/String;

    return-object v0
.end method

.method public getExdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->exdata:Ljava/lang/String;

    return-object v0
.end method

.method public setBillingResult(Ljava/lang/String;)V
    .locals 0
    .param p1, "billingResult"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->billingResult:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setBillingResult_ID(Ljava/lang/String;)V
    .locals 0
    .param p1, "billingResult_ID"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->billingResult_ID:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setColumn_ID(Ljava/lang/String;)V
    .locals 0
    .param p1, "column_ID"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->column_ID:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setExdata(Ljava/lang/String;)V
    .locals 0
    .param p1, "exdata"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/cynosure/paymentsdk/vo/BillingResult;->exdata:Ljava/lang/String;

    .line 39
    return-void
.end method
