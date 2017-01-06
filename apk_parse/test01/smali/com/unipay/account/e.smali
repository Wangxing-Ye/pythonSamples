.class Lcom/unipay/account/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/account/loader/Loader$b;


# instance fields
.field final synthetic a:Lcom/unipay/account/UnipayAccountPlatform;


# direct methods
.method constructor <init>(Lcom/unipay/account/UnipayAccountPlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 6

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->a()Ljava/lang/String;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    const-string v0, "[OnLoadResult] code(%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->b()Lcom/unipay/account/UnipayAccountPlatform;

    move-result-object v0

    iget-object v2, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq v0, v2, :cond_0

    const-string v0, "[OnLoadResult] instance out of date, bye"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_5

    const-string v0, "load success"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    iget-object v2, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    iget-object v3, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v4}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v5}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->d(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v2, "c failed!"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform$a;)Lcom/unipay/account/UnipayAccountPlatform$a;

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->e(Lcom/unipay/account/UnipayAccountPlatform;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/loader/Loader;)Lcom/unipay/account/loader/Loader;

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/loader/Loader;->e(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    iget-object v2, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v3}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v4}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v5}, Lcom/unipay/account/UnipayAccountPlatform;->f(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnInitResultListener;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnInitResultListener;)V

    :goto_1
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->g(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/UnipayAccountPlatform;

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    const/4 v2, -0x1

    const-string v3, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->g(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/UnipayAccountPlatform;

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    const/4 v2, -0x1

    const-string v3, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "[mOnLoadResultListener] mWantUpdate(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->c()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->c()Z

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Z)Z

    if-eqz v0, :cond_4

    const-string v0, "[mOnLoadResultListener] checking update"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->c:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform$a;)Lcom/unipay/account/UnipayAccountPlatform$a;

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    iget-object v2, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v3}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :cond_4
    const-string v0, "[mOnLoadResultListener] finished, bye"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->d:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lcom/unipay/account/UnipayAccountPlatform$a;)V

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->h(Lcom/unipay/account/UnipayAccountPlatform;)V

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->i(Lcom/unipay/account/UnipayAccountPlatform;)V

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    const/4 v2, 0x0

    const-string v3, "\u521d\u59cb\u5316\u6210\u529f.0"

    invoke-static {v0, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;ILjava/lang/String;)V

    monitor-exit v1

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform$a;)Lcom/unipay/account/UnipayAccountPlatform$a;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/loader/Loader;)Lcom/unipay/account/loader/Loader;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->g(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/UnipayAccountPlatform;

    iget-object v0, p0, Lcom/unipay/account/e;->a:Lcom/unipay/account/UnipayAccountPlatform;

    const/4 v2, -0x1

    const-string v3, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v0, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/UnipayAccountPlatform;ILjava/lang/String;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
