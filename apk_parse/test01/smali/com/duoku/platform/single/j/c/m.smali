.class Lcom/duoku/platform/single/j/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/k;

.field private final synthetic b:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/k;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/m;->a:Lcom/duoku/platform/single/j/c/k;

    iput-object p2, p0, Lcom/duoku/platform/single/j/c/m;->b:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/m;->b:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/m;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/j/c/m;->a:Lcom/duoku/platform/single/j/c/k;

    invoke-static {v0}, Lcom/duoku/platform/single/j/c/k;->a(Lcom/duoku/platform/single/j/c/k;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
