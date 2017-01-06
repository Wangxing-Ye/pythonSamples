.class public Lcom/duoku/platform/single/j/c/s;
.super Landroid/app/Dialog;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/s;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/s;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/s;->c:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/s;->a()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/s;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/j/c/s;->c:Landroid/content/Context;

    const-string v2, "dk_custom_progress"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/s;->c:Landroid/content/Context;

    const-string v2, "dk_tv_loading_msg"

    invoke-static {v0, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/single/j/c/s;->d:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/j/c/s;->requestWindowFeature(I)Z

    invoke-virtual {p0, v1}, Lcom/duoku/platform/single/j/c/s;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/s;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/s;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/s;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/duoku/platform/single/j/c/s;->show()V

    return-void
.end method
