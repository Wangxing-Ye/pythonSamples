.class public Lcom/duoku/platform/single/draw/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/duoku/platform/single/draw/b;

.field private static b:Landroid/content/Context;


# instance fields
.field private c:Lcom/duoku/platform/single/callback/IDKSDKCallBack;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/duoku/platform/single/draw/b;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/draw/b;->a:Lcom/duoku/platform/single/draw/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/draw/b;

    invoke-direct {v0}, Lcom/duoku/platform/single/draw/b;-><init>()V

    sput-object v0, Lcom/duoku/platform/single/draw/b;->a:Lcom/duoku/platform/single/draw/b;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/draw/b;->a:Lcom/duoku/platform/single/draw/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V
    .locals 2

    iput-object p2, p0, Lcom/duoku/platform/single/draw/b;->c:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    sput-object p1, Lcom/duoku/platform/single/draw/b;->b:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v1, Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()Lcom/duoku/platform/single/callback/IDKSDKCallBack;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/draw/b;->c:Lcom/duoku/platform/single/callback/IDKSDKCallBack;

    return-object v0
.end method

.method public c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/draw/b;->b:Landroid/content/Context;

    return-object v0
.end method
