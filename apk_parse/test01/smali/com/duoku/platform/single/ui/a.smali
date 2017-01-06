.class Lcom/duoku/platform/single/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKContainerActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKContainerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/a;->a:Lcom/duoku/platform/single/ui/DKContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/f/d;->a()Lcom/duoku/platform/single/f/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/d;->c()Lcom/duoku/platform/single/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/d/b;->d()Lcom/duoku/platform/single/d/a/g;

    move-result-object v0

    const/16 v1, 0xbc6

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/duoku/platform/single/d/a/g;->a(ILcom/duoku/platform/single/item/DKOrderInfoData;)V

    iget-object v0, p0, Lcom/duoku/platform/single/ui/a;->a:Lcom/duoku/platform/single/ui/DKContainerActivity;

    invoke-virtual {v0}, Lcom/duoku/platform/single/ui/DKContainerActivity;->finish()V

    return-void
.end method
