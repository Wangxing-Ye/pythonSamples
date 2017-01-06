.class Lcom/duoku/platform/single/util/L;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/widget/PopupWindow;

.field private final synthetic b:Landroid/view/View;

.field private final synthetic c:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/util/L;->a:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/duoku/platform/single/util/L;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/duoku/platform/single/util/L;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/util/L;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/duoku/platform/single/util/L;->b:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/util/L;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/util/L;->c:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
