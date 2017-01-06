.class Lcom/duoku/platform/single/j/c/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/k;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/q;->a:Lcom/duoku/platform/single/j/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/util/j;->b:Lcom/duoku/platform/single/j/c/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/util/j;->b:Lcom/duoku/platform/single/j/c/f;

    invoke-virtual {v0}, Lcom/duoku/platform/single/j/c/f;->h()V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/q;->a:Lcom/duoku/platform/single/j/c/k;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->a(Lcom/duoku/platform/single/j/c/k;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/q;->a:Lcom/duoku/platform/single/j/c/k;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->a(Lcom/duoku/platform/single/j/c/k;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
