.class public Lcom/duoku/platform/single/h/a/e;
.super Lcom/duoku/platform/single/h/a/a;


# instance fields
.field private a:I

.field private j:Lcom/duoku/platform/single/item/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoku/platform/single/h/a/a;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/duoku/platform/single/h/a/e;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/h/a/e;->j:Lcom/duoku/platform/single/item/p;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/e;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/e;->a:I

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/p;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/e;->j:Lcom/duoku/platform/single/item/p;

    return-void
.end method

.method public b()Lcom/duoku/platform/single/item/p;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/e;->j:Lcom/duoku/platform/single/item/p;

    return-object v0
.end method
