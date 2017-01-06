.class Lcom/duoku/platform/single/j/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;


# direct methods
.method private constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/j/b/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/j/b/a$a;-><init>(Lcom/duoku/platform/single/j/b/a;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 2

    check-cast p2, Lcom/duoku/platform/single/h/a/h;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/h;->a()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Ljava/util/List;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->c(Lcom/duoku/platform/single/j/b/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;Z)V

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->l(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$a;->a:Lcom/duoku/platform/single/j/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;Z)V

    goto :goto_0
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method
