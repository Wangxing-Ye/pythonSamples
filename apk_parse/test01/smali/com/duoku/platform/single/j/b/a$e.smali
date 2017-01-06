.class public Lcom/duoku/platform/single/j/b/a$e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/j/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/b/a;

.field private b:I


# direct methods
.method protected constructor <init>(Lcom/duoku/platform/single/j/b/a;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/duoku/platform/single/j/b/a$e;->b:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/j/b/a$e;->b:I

    return-void
.end method

.method public run()V
    .locals 6

    const/16 v5, 0x3c

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->q(Lcom/duoku/platform/single/j/b/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/duoku/platform/single/j/b/a$e;->b:I

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_dialog_string_leaving"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/duoku/platform/single/j/b/a$e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/duoku/platform/single/j/b/a$e;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/duoku/platform/single/j/b/a$e;->b:I

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dk_color_9c9c9c"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->o(Lcom/duoku/platform/single/j/b/a;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0, v4}, Lcom/duoku/platform/single/j/b/a;->e(Lcom/duoku/platform/single/j/b/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0, v4}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;Z)V

    iput v5, p0, Lcom/duoku/platform/single/j/b/a$e;->b:I

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dk_dialog_string_reget"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_color_0066cc"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->o(Lcom/duoku/platform/single/j/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->s(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/j/b/a$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dk_dialog_string_reget"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->r(Lcom/duoku/platform/single/j/b/a;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v2}, Lcom/duoku/platform/single/j/b/a;->d(Lcom/duoku/platform/single/j/b/a;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "dk_color_0066cc"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0, v4}, Lcom/duoku/platform/single/j/b/a;->b(Lcom/duoku/platform/single/j/b/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v0}, Lcom/duoku/platform/single/j/b/a;->o(Lcom/duoku/platform/single/j/b/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/b/a$e;->a:Lcom/duoku/platform/single/j/b/a;

    invoke-static {v1}, Lcom/duoku/platform/single/j/b/a;->s(Lcom/duoku/platform/single/j/b/a;)Lcom/duoku/platform/single/j/b/a$e;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v5, p0, Lcom/duoku/platform/single/j/b/a$e;->b:I

    goto/16 :goto_0
.end method
