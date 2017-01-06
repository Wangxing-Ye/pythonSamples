.class Lcom/duoku/platform/single/util/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/widget/Button;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Landroid/app/Dialog;

.field private final synthetic d:Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# direct methods
.method constructor <init>(Landroid/widget/Button;Landroid/app/Activity;Landroid/app/Dialog;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/util/y;->a:Landroid/widget/Button;

    iput-object p2, p0, Lcom/duoku/platform/single/util/y;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/duoku/platform/single/util/y;->c:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/duoku/platform/single/util/y;->d:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/duoku/platform/single/view/l;->a()Lcom/duoku/platform/single/view/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/view/l;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/h/d;->c()V

    iget-object v0, p0, Lcom/duoku/platform/single/util/y;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/util/y;->a:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "exit_pv"

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/util/y;->b:Landroid/app/Activity;

    const-string v2, "10006"

    sget-object v3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/n/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "game"

    sget-object v2, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/duoku/platform/single/util/y;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/duoku/platform/single/util/d;->a()Lcom/duoku/platform/single/util/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/util/d;->c()V

    iget-object v0, p0, Lcom/duoku/platform/single/util/y;->d:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
