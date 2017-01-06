.class Lcom/duoku/platform/single/d/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/d/a/e;

.field private final synthetic b:I

.field private final synthetic c:Lcom/duoku/platform/single/item/DKOrderInfoData;

.field private final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/d/a/e;ILcom/duoku/platform/single/item/DKOrderInfoData;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/d/a/f;->a:Lcom/duoku/platform/single/d/a/e;

    iput p2, p0, Lcom/duoku/platform/single/d/a/f;->b:I

    iput-object p3, p0, Lcom/duoku/platform/single/d/a/f;->c:Lcom/duoku/platform/single/item/DKOrderInfoData;

    iput-object p4, p0, Lcom/duoku/platform/single/d/a/f;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget v1, p0, Lcom/duoku/platform/single/d/a/f;->b:I

    iget-object v2, p0, Lcom/duoku/platform/single/d/a/f;->c:Lcom/duoku/platform/single/item/DKOrderInfoData;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/g/a;->b(ILcom/duoku/platform/single/item/DKOrderInfoData;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/f;->a:Lcom/duoku/platform/single/d/a/e;

    invoke-static {v1}, Lcom/duoku/platform/single/d/a/e;->a(Lcom/duoku/platform/single/d/a/e;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/f;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lcom/duoku/platform/single/d/a/f;->a:Lcom/duoku/platform/single/d/a/e;

    invoke-static {v1}, Lcom/duoku/platform/single/d/a/e;->b(Lcom/duoku/platform/single/d/a/e;)Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    return-void
.end method
