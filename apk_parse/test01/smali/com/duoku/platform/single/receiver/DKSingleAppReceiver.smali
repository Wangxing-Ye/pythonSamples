.class public Lcom/duoku/platform/single/receiver/DKSingleAppReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final a:I = 0x8

.field private static b:Lcom/duoku/platform/single/util/H;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/duoku/platform/single/receiver/DKSingleAppReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    sput-object v0, Lcom/duoku/platform/single/receiver/DKSingleAppReceiver;->b:Lcom/duoku/platform/single/util/H;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/16 v3, 0x8

    if-nez p2, :cond_1

    sget-object v0, Lcom/duoku/platform/single/receiver/DKSingleAppReceiver;->b:Lcom/duoku/platform/single/util/H;

    const-string v1, "onReceive intent == null"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/single/receiver/DKSingleAppReceiver;->b:Lcom/duoku/platform/single/util/H;

    const-string v2, "onReceive ACTION_PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v3, :cond_3

    :cond_2
    sget-object v0, Lcom/duoku/platform/single/receiver/DKSingleAppReceiver;->b:Lcom/duoku/platform/single/util/H;

    const-string v1, "onReceive  data <= PACKAGE_NAME_START_INDEX"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoku/platform/single/util/P;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoku/platform/single/receiver/DKSingleAppReceiver;->b:Lcom/duoku/platform/single/util/H;

    const-string v1, "onReceive  downloadId != 0"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->f()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "install_num"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/duoku/platform/single/receiver/DKSingleAppReceiver;->b:Lcom/duoku/platform/single/util/H;

    const-string v1, "onReceive  appcontext == null"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const-string v0, "install_num"

    invoke-static {v0}, Lcom/duoku/platform/single/util/g;->g(Ljava/lang/String;)V

    goto :goto_0
.end method
