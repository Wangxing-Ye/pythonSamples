.class public Lcom/duoku/platform/single/item/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/item/j;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/item/j;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/item/j;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/duoku/platform/single/item/j;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/single/item/j;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/single/item/j;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/j;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/item/j;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/item/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/j;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/item/j;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/item/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/item/j;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/item/j;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/item/j;->c:Ljava/lang/String;

    return-object v0
.end method