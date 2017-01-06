.class public Lcom/duoku/platform/single/ui/DKBaseActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onPause()V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/n/a;->b(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoku/platform/single/n/a;->c(Landroid/content/Context;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushManager;->activityStarted(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-static {p0}, Lcom/baidu/android/pushservice/PushManager;->activityStoped(Landroid/app/Activity;)V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
