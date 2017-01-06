.class public Lcom/duoku/platform/single/h/a/t;
.super Lcom/duoku/platform/single/h/a/a;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/q;",
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
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/q;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/duoku/platform/single/h/a/t;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoku/platform/single/item/q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/duoku/platform/single/h/a/t;->a:Ljava/util/List;

    return-void
.end method
