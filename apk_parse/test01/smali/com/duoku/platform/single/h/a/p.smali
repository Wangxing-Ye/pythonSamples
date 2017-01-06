.class public Lcom/duoku/platform/single/h/a/p;
.super Lcom/duoku/platform/single/h/a/a;


# instance fields
.field private a:I

.field private j:I

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/single/item/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/h/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/p;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/p;->a:I

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/single/item/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/p;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/h/a/p;->j:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/h/a/p;->j:I

    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/single/item/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/p;->k:Ljava/util/ArrayList;

    return-object v0
.end method
