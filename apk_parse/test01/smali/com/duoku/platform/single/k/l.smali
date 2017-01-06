.class public Lcom/duoku/platform/single/k/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;
.implements Lcom/duoku/platform/single/k/j;


# static fields
.field private static a:Lcom/duoku/platform/single/k/l;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/duoku/platform/single/util/P;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/duoku/platform/single/item/DKCMMMData;

.field private g:Lcom/duoku/platform/single/item/DKCMGBData;

.field private h:Lcom/duoku/platform/single/callback/a;

.field private i:Lcom/duoku/platform/single/util/H;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/k/l;->b:Landroid/content/Context;

    const-class v0, Lcom/duoku/platform/single/k/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/l;->i:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/k/l;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/k/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/k/l;->a:Lcom/duoku/platform/single/k/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/k/l;

    invoke-direct {v0}, Lcom/duoku/platform/single/k/l;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/k/l;->a:Lcom/duoku/platform/single/k/l;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/k/l;->a:Lcom/duoku/platform/single/k/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/duoku/platform/single/item/DKCMGBData;)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->i:Lcom/duoku/platform/single/util/H;

    const-string v1, "initGBSDK "

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "megjb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoku/platform/single/d/a/h;->a(Landroid/app/Activity;)Lcom/duoku/platform/single/d/a/h;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMGBData;->getGameName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMGBData;->getCpName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMGBData;->getCpServerNum()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/d/a/h;->a([Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Lcom/duoku/platform/single/item/DKCMMMData;)V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->i:Lcom/duoku/platform/single/util/H;

    const-string v1, "initMM "

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/d/a/d;->a()Lcom/duoku/platform/single/d/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/l;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMMMData;->getMMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/DKCMMMData;->getMMkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/single/d/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x90

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/duoku/platform/single/k/l;->b()V

    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->h:Lcom/duoku/platform/single/callback/a;

    invoke-interface {v0}, Lcom/duoku/platform/single/callback/a;->a()V

    :cond_0
    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/16 v0, 0x90

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/duoku/platform/single/h/a/o;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/a;->n()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/duoku/platform/single/k/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/duoku/platform/single/util/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/o;->a()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/single/k/l;->f:Lcom/duoku/platform/single/item/DKCMMMData;

    if-eqz v3, :cond_1

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v3, "dk_flag_support_mm"

    invoke-virtual {v2, v3, v5}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v3, "MM"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/o;->d()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->f:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-direct {p0, v2}, Lcom/duoku/platform/single/k/l;->b(Lcom/duoku/platform/single/item/DKCMMMData;)V

    :goto_0
    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/o;->e()I

    move-result v2

    iget-object v3, p0, Lcom/duoku/platform/single/k/l;->g:Lcom/duoku/platform/single/item/DKCMGBData;

    if-eqz v3, :cond_2

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v3, "dk_flag_support_gb_sdk"

    invoke-virtual {v2, v3, v5}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v3, "gb_sdk"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/o;->f()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->g:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-direct {p0, v2}, Lcom/duoku/platform/single/k/l;->b(Lcom/duoku/platform/single/item/DKCMGBData;)V

    :goto_1
    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/o;->h()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v3, "dk_flag_support_ybk_sdk"

    invoke-virtual {v2, v3, v5}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v3, "ybkcm"

    invoke-static {v1, v3}, Lcom/duoku/platform/single/util/g;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/o;->f()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    :goto_2
    iget-object v1, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v2, "dk_sequence_of_mobile_billing"

    invoke-virtual {v0}, Lcom/duoku/platform/single/h/a/o;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/util/P;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->h:Lcom/duoku/platform/single/callback/a;

    invoke-interface {v0}, Lcom/duoku/platform/single/callback/a;->a()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v3, "dk_flag_support_mm"

    invoke-virtual {v2, v3, v6}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v3, "dk_flag_support_gb_sdk"

    invoke-virtual {v2, v3, v6}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    const-string v2, "dk_flag_support_ybk_sdk"

    invoke-virtual {v1, v2, v6}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/duoku/platform/single/k/l;->b()V

    goto :goto_3
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x90

    iput-object p1, p0, Lcom/duoku/platform/single/k/l;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/k/l;->c:Lcom/duoku/platform/single/util/P;

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/duoku/platform/single/k/l;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/duoku/platform/single/k/l;->e:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v4, v1}, Lcom/duoku/platform/single/g/a;->a(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryGbAndMmSupport"

    invoke-interface {v1, v2, v4, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method public a(Lcom/duoku/platform/single/callback/a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/l;->h:Lcom/duoku/platform/single/callback/a;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/DKCMGBData;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/l;->g:Lcom/duoku/platform/single/item/DKCMGBData;

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/DKCMMMData;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/l;->f:Lcom/duoku/platform/single/item/DKCMMMData;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/l;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/duoku/platform/single/k/l;->e:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->f:Lcom/duoku/platform/single/item/DKCMMMData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->i:Lcom/duoku/platform/single/util/H;

    const-string v1, "tag 144 request failure and china mobile mm is init"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->f:Lcom/duoku/platform/single/item/DKCMMMData;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/k/l;->b(Lcom/duoku/platform/single/item/DKCMMMData;)V

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->g:Lcom/duoku/platform/single/item/DKCMGBData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->i:Lcom/duoku/platform/single/util/H;

    const-string v1, "tag 144 request failure and china mobile gameBase is init"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->g:Lcom/duoku/platform/single/item/DKCMGBData;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/k/l;->b(Lcom/duoku/platform/single/item/DKCMGBData;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/k/l;->i:Lcom/duoku/platform/single/util/H;

    const-string v1, "tag 144 request failure , china mobile mm and gameBase both nil~~~~~~~~~~"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
