.class Lcom/duoku/platform/single/util/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/DialogInterface$OnDismissListener;

.field private final synthetic b:Landroid/app/Dialog;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnDismissListener;Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/util/n;->a:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p2, p0, Lcom/duoku/platform/single/util/n;->b:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/duoku/platform/single/util/n;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/util/n;->a:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/util/n;->a:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/util/n;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/duoku/platform/single/util/n;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
