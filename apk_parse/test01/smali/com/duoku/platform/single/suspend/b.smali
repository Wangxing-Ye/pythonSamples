.class Lcom/duoku/platform/single/suspend/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/a;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/suspend/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "isBannerViewShow"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->b(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->c(Lcom/duoku/platform/single/suspend/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->b(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->d(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/a;->e(Lcom/duoku/platform/single/suspend/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "dk_banner_close_icon_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->b(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->b(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->f(Lcom/duoku/platform/single/suspend/a;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->g(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->h(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->g(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->h(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-virtual {v0}, Lcom/duoku/platform/single/suspend/a;->c()V

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0, v5}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;Landroid/widget/RelativeLayout;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->g(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->g(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->f(Lcom/duoku/platform/single/suspend/a;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->h(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->h(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/a;->i(Lcom/duoku/platform/single/suspend/a;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0, v5}, Lcom/duoku/platform/single/suspend/a;->b(Lcom/duoku/platform/single/suspend/a;Landroid/widget/RelativeLayout;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->j(Lcom/duoku/platform/single/suspend/a;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/a;->k(Lcom/duoku/platform/single/suspend/a;)Lcom/duoku/platform/single/item/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/suspend/a;Lcom/duoku/platform/single/item/b;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v0}, Lcom/duoku/platform/single/suspend/a;->j(Lcom/duoku/platform/single/suspend/a;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/b;->a:Lcom/duoku/platform/single/suspend/a;

    invoke-static {v1}, Lcom/duoku/platform/single/suspend/a;->k(Lcom/duoku/platform/single/suspend/a;)Lcom/duoku/platform/single/item/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/single/suspend/a;->b(Lcom/duoku/platform/single/suspend/a;Lcom/duoku/platform/single/item/b;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
