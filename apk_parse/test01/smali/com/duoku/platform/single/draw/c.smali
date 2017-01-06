.class public Lcom/duoku/platform/single/draw/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:I = 0x78

.field public static b:Z


# instance fields
.field public c:Landroid/content/Context;

.field private d:I

.field private e:Landroid/widget/Button;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/duoku/platform/single/draw/c;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x78

    iput v0, p0, Lcom/duoku/platform/single/draw/c;->d:I

    iput-object v1, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    iput-object v1, p0, Lcom/duoku/platform/single/draw/c;->f:Landroid/os/Handler;

    iput-object p1, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Handler;)Lcom/duoku/platform/single/draw/c;
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/draw/c;->f:Landroid/os/Handler;

    return-object p0
.end method

.method public a(Landroid/widget/Button;)Lcom/duoku/platform/single/draw/c;
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    return-object p0
.end method

.method public run()V
    .locals 5

    const/16 v4, 0x78

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/duoku/platform/single/draw/c;->b:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/duoku/platform/single/draw/c;->d:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    const-string v3, "dk_dialog_string_leaving"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/duoku/platform/single/draw/c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/duoku/platform/single/draw/c;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/duoku/platform/single/draw/c;->d:I

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    const-string v2, "dk_color_9c9c9c"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->f:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_1
    sput-boolean v1, Lcom/duoku/platform/single/draw/c;->b:Z

    iput v4, p0, Lcom/duoku/platform/single/draw/c;->d:I

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    const-string v2, "dk_dialog_string_reget"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    const-string v3, "dk_color_0066cc"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    const-string v2, "dk_dialog_string_reget"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->e:Landroid/widget/Button;

    iget-object v1, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/draw/c;->c:Landroid/content/Context;

    const-string v3, "dk_color_0066cc"

    invoke-static {v2, v3}, Lcom/duoku/platform/single/util/M;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/draw/c;->f:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v4, p0, Lcom/duoku/platform/single/draw/c;->d:I

    goto :goto_0
.end method
