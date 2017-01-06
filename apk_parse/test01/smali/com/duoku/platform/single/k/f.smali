.class public Lcom/duoku/platform/single/k/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/h/h;
.implements Lcom/duoku/platform/single/k/j;


# static fields
.field private static a:Lcom/duoku/platform/single/k/f;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/k/f;->b:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/k/f;->c:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized a()Lcom/duoku/platform/single/k/f;
    .locals 2

    const-class v1, Lcom/duoku/platform/single/k/f;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoku/platform/single/k/f;->a:Lcom/duoku/platform/single/k/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/k/f;

    invoke-direct {v0}, Lcom/duoku/platform/single/k/f;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/k/f;->a:Lcom/duoku/platform/single/k/f;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/k/f;->a:Lcom/duoku/platform/single/k/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "0"

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v1

    const/16 v2, 0xfa1

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/g/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/f;->e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-interface {v1, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/duoku/platform/single/h/a/q;

    const-string v0, ""

    const-string v1, "0"

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->n()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Lcom/duoku/platform/single/h/a/q;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v1

    const/16 v2, 0xfa0

    invoke-virtual {v1, v2, v0}, Lcom/duoku/platform/single/g/a;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/k/f;->e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    invoke-interface {v1, v0}, Lcom/duoku/platform/single/callback/IDKSDKCallBack;->onResponse(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/duoku/platform/single/k/f;->b:Landroid/content/Context;

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/k/f;->c:Ljava/lang/String;

    iget v2, p0, Lcom/duoku/platform/single/k/f;->d:I

    invoke-static {v2}, Lcom/duoku/platform/single/item/DKOrderPayChannelData;->valueOf(I)Lcom/duoku/platform/single/item/DKOrderPayChannelData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Lcom/duoku/platform/single/item/DKOrderPayChannelData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/queryOrderById"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;ILcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/k/f;->c:Ljava/lang/String;

    iput p2, p0, Lcom/duoku/platform/single/k/f;->d:I

    iput-object p3, p0, Lcom/duoku/platform/single/k/f;->e:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    return-void
.end method
