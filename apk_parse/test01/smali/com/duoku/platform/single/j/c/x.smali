.class Lcom/duoku/platform/single/j/c/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/j/c/w;

.field private final synthetic b:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/j/c/w;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/j/c/x;->a:Lcom/duoku/platform/single/j/c/w;

    iput-object p2, p0, Lcom/duoku/platform/single/j/c/x;->b:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/x;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/j/c/x;->b:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method
