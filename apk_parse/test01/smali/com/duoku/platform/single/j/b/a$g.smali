.class public Lcom/duoku/platform/single/j/b/a$g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/j/b/a$g;)Lcom/duoku/platform/single/j/b/a;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    return-object v0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    new-instance v5, Lcom/duoku/platform/single/j/b/H;

    invoke-direct {v5, p0, p3}, Lcom/duoku/platform/single/j/b/H;-><init>(Lcom/duoku/platform/single/j/b/a$g;I)V

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

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->n(Lcom/duoku/platform/single/j/b/a;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strCreditVerifyCode"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strDebitVerifyCode"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->i(Lcom/duoku/platform/single/j/b/a;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "strBindVerifyCode"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GSDK"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v1

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "3"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->h(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/i/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/j/b/a;->a(Lcom/duoku/platform/single/j/b/a;Lcom/duoku/platform/single/i/c;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/b/a;->e()V

    goto :goto_1

    :cond_2
    const-string v0, "1"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->o(Lcom/duoku/platform/single/j/b/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/j/b/G;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/j/b/G;-><init>(Lcom/duoku/platform/single/j/b/a$g;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_3
    const-string v0, "2"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/j/b/a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->k(Lcom/duoku/platform/single/j/b/a;)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$g;->a:Lcom/duoku/platform/single/j/b/a;

    const-string v1, "\u670d\u52a1\u5668\u9519\u8bef,\u8bf7\u91cd\u8bd5!"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/j/b/a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x88
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method
