.class public Lcom/duoku/platform/single/j/b/a$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a$f;)Lcom/duoku/platform/single/j/b/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    return-object v0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    new-instance v5, Lcom/duoku/platform/single/j/b/F;

    invoke-direct {v5, p0, p3, p4}, Lcom/duoku/platform/single/j/b/F;-><init>(Lcom/duoku/platform/single/j/b/a$f;ILjava/lang/String;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/duoku/platform/single/j/b/a;->a(IIILjava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 4

    check-cast p2, Lcom/duoku/platform/single/h/a/j;

    const-string v0, "3"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/i/c;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/b/a;->e()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "1"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->o(Lcom/duoku/platform/single/j/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/j/b/E;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/b/E;-><init>(Lcom/duoku/platform/single/j/b/a$f;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "2"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/j/b/a;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$f;->a:Lcom/duoku/platform/single/j/b/a;

    const-string v1, "\u670d\u52a1\u5668\u9519\u8bef,\u8bf7\u91cd\u8bd5!"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

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
