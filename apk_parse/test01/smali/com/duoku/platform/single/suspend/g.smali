.class Lcom/duoku/platform/single/suspend/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/f;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/f;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/g;->a:Lcom/duoku/platform/single/suspend/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-boolean v0, Lcom/duoku/platform/single/suspend/f;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/suspend/f;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/suspend/f;->c:Landroid/widget/ImageView;

    sget v1, Lcom/duoku/platform/single/suspend/f;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    sget-boolean v0, Lcom/duoku/platform/single/suspend/f;->b:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/duoku/platform/single/suspend/f;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v0, Lcom/duoku/platform/single/suspend/f;->h:I

    if-lez v0, :cond_1

    sget-object v0, Lcom/duoku/platform/single/suspend/f;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
