.class public Lcom/unipay/account/UnipayAccountPlatform;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unipay/account/AccountAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipay/account/UnipayAccountPlatform$b;,
        Lcom/unipay/account/UnipayAccountPlatform$c;,
        Lcom/unipay/account/UnipayAccountPlatform$a;
    }
.end annotation


# static fields
.field private static a:Lcom/unipay/account/UnipayAccountPlatform$a;

.field private static b:Lcom/unipay/account/loader/Loader;

.field private static c:Z

.field private static d:Lcom/unipay/account/UnipayAccountPlatform;

.field private static e:Ljava/lang/String;


# instance fields
.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Landroid/content/Context;

.field private j:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Object;

.field private l:Lcom/unipay/account/AccountAPI$OnInitResultListener;

.field private m:Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;

.field private n:Lcom/unipay/account/loader/Loader$b;

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unipay/account/UnipayAccountPlatform;->c:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    const-string v0, "UNIPAY_ACCOUNT_PLATFORM_LOCK"

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->h:Landroid/os/Handler;

    new-instance v0, Lcom/unipay/account/e;

    invoke-direct {v0, p0}, Lcom/unipay/account/e;-><init>(Lcom/unipay/account/UnipayAccountPlatform;)V

    iput-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->n:Lcom/unipay/account/loader/Loader$b;

    new-instance v0, Lcom/unipay/account/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unipay/account/i;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->i:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/AccountAPI$OnInitResultListener;)Lcom/unipay/account/AccountAPI$OnInitResultListener;
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UnipayAccountPlatform;->l:Lcom/unipay/account/AccountAPI$OnInitResultListener;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Lcom/unipay/account/ClientInfo;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/unipay/account/UnipayAccountPlatform;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "clientId"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "clientKey"

    invoke-static {v1, v3}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/unipay/account/ClientInfo;

    invoke-direct {v1, v2, v3}, Lcom/unipay/account/ClientInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform$a;)Lcom/unipay/account/UnipayAccountPlatform$a;
    .locals 0

    sput-object p0, Lcom/unipay/account/UnipayAccountPlatform;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    return-object p0
.end method

.method static synthetic a(Lcom/unipay/account/loader/Loader;)Lcom/unipay/account/loader/Loader;
    .locals 0

    sput-object p0, Lcom/unipay/account/UnipayAccountPlatform;->b:Lcom/unipay/account/loader/Loader;

    return-object p0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lcom/unipay/account/UnipayAccountPlatform;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/unipay/account/UnipayAccountPlatform;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/unipay/account/UnipayAccountPlatform;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "have NO idear how to load"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    return-object p1
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/unipay/account/loader/Loader;->ca(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/unipay/account/UnipayAccountPlatform;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/unipay/account/UnipayAccountPlatform;->c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "have NO idear how to load"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unipay/account/UnipayAccountPlatform;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/unipay/account/UnipayAccountPlatform;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->h:Landroid/os/Handler;

    new-instance v1, Lcom/unipay/account/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/unipay/account/g;-><init>(Lcom/unipay/account/UnipayAccountPlatform;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnInitResultListener;)V
    .locals 6

    const/16 v5, 0x9

    iput-object p4, p0, Lcom/unipay/account/UnipayAccountPlatform;->l:Lcom/unipay/account/AccountAPI$OnInitResultListener;

    iput-object p1, p0, Lcom/unipay/account/UnipayAccountPlatform;->i:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_0

    const-string v1, "UNIPAY_ACCOUNT"

    const-string v2, "Android SDK version too low(%d/%d)! bye"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform$a;)V

    const/4 v0, -0x7

    const-string v1, "Android SDK\u7248\u672c\u592a\u65e7(<9)"

    invoke-direct {p0, v0, v1}, Lcom/unipay/account/UnipayAccountPlatform;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->b:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform$a;)V

    iput-object p2, p0, Lcom/unipay/account/UnipayAccountPlatform;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/unipay/account/UnipayAccountPlatform;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->n:Lcom/unipay/account/loader/Loader$b;

    invoke-direct {p0, v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Lcom/unipay/account/loader/Loader$b;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unipay/account/UnipayAccountPlatform;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnInitResultListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unipay/account/UnipayAccountPlatform;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnInitResultListener;)V

    return-void
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/unipay/account/loader/Loader$b;)V
    .locals 2

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/loader/Loader$b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lcom/unipay/account/loader/Loader$b;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/unipay/account/UnipayAccountPlatform;->d(Lcom/unipay/account/loader/Loader$b;)V

    goto :goto_0

    :cond_2
    const-string v0, "_________________________ seeeeee"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->h:Landroid/os/Handler;

    new-instance v1, Lcom/unipay/account/j;

    invoke-direct {v1, p0, p1}, Lcom/unipay/account/j;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/loader/Loader$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/unipay/account/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unipay/account/f;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;)V

    const-string v1, "checkUpdate"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/os/Handler;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-direct {p0, v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/unipay/account/UnipayAccountPlatform;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipay/account/UnipayAccountPlatform;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/unipay/account/UnipayAccountPlatform;->c:Z

    return p0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 6

    const/4 v1, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "...................gss f(%s)"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    if-nez v3, :cond_0

    const-string v1, "...................gss err.1"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "...................gss  ==> 1"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v1, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "...................gss  ==> 0"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v1, "...................gss err.2"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b()Lcom/unipay/account/UnipayAccountPlatform;
    .locals 1

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.unipay.account.inner.AccountContext"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->j:Ljava/lang/Class;

    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->j:Ljava/lang/Class;

    const-string v2, "createInstance"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "com.unipay.account.inner.ui.generic.LocalActivity"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    invoke-static {v1, p1, p2, p3}, Lcom/unipay/account/loader/Loader;->cc(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/unipay/account/UnipayAccountPlatform$a;)V
    .locals 0

    invoke-static {p0}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform$a;)V

    return-void
.end method

.method private b(Lcom/unipay/account/loader/Loader$b;)V
    .locals 2

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->b:Lcom/unipay/account/loader/Loader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unipay/account/loader/Loader;

    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/unipay/account/loader/Loader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform;->b:Lcom/unipay/account/loader/Loader;

    :cond_0
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->b:Lcom/unipay/account/loader/Loader;

    invoke-virtual {v0, p1}, Lcom/unipay/account/loader/Loader;->a(Lcom/unipay/account/loader/Loader$b;)Z

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/unipay/account/UserInfo;
    .locals 4

    invoke-direct {p0, p1}, Lcom/unipay/account/UnipayAccountPlatform;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/unipay/account/UserInfo;

    invoke-direct {v0}, Lcom/unipay/account/UserInfo;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "userType"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setUserType(Ljava/lang/String;)V

    const-string v2, "userId"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setUserId(Ljava/lang/String;)V

    const-string v2, "account"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setAccount(Ljava/lang/String;)V

    const-string v2, "nickname"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setNickname(Ljava/lang/String;)V

    const-string v2, "level"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setLevel(I)V

    const-string v2, "accessToken"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setAccessToken(Ljava/lang/String;)V

    const-string v2, "portraitUrl"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setPortraitUrl(Ljava/lang/String;)V

    const-string v2, "point"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setPoint(I)V

    const-string v2, "imsi"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setImsi(Ljava/lang/String;)V

    const-string v2, "gender"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setGender(Ljava/lang/String;)V

    const-string v2, "score"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/unipay/account/UserInfo;->setScore(I)V

    const-string v2, "userName"

    invoke-static {v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unipay/account/UserInfo;->setUserName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/unipay/account/loader/Loader;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/unipay/account/loader/Loader;->cb(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->j:Ljava/lang/Class;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->j:Ljava/lang/Class;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    invoke-virtual {v1, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->l()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v0, "^^^^^^^^^^^^^^^^^^^^^^^^gpssf e(ni)"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v3, "getsdkselectf"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "^^^^^^^^^^^^^^^^^^^^^^^^gpssf f(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->g:Ljava/lang/String;

    return-object v0
.end method

.method private static c(Lcom/unipay/account/UnipayAccountPlatform$a;)V
    .locals 3

    const-string v0, "[UnipayAccountPlatform.setInitState] state(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    sput-object p0, Lcom/unipay/account/UnipayAccountPlatform;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    return-void
.end method

.method private c(Lcom/unipay/account/loader/Loader$b;)V
    .locals 2

    new-instance v0, Lcom/unipay/account/UnipayAccountPlatform$b;

    invoke-direct {v0, p0, p1}, Lcom/unipay/account/UnipayAccountPlatform$b;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/loader/Loader$b;)V

    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->h:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcom/unipay/account/UnipayAccountPlatform;->c:Z

    return v0
.end method

.method static synthetic d()Lcom/unipay/account/UnipayAccountPlatform$a;
    .locals 1

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    return-object v0
.end method

.method static synthetic d(Lcom/unipay/account/UnipayAccountPlatform;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    return-object v0
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "com.unipay.account.inner.ui.generic.LocalService"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method private d(Lcom/unipay/account/loader/Loader$b;)V
    .locals 2

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->h:Landroid/os/Handler;

    new-instance v1, Lcom/unipay/account/b;

    invoke-direct {v1, p0, p1}, Lcom/unipay/account/b;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Lcom/unipay/account/loader/Loader$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "destroy"

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic e(Lcom/unipay/account/UnipayAccountPlatform;)Z
    .locals 1

    invoke-direct {p0}, Lcom/unipay/account/UnipayAccountPlatform;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnInitResultListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->l:Lcom/unipay/account/AccountAPI$OnInitResultListener;

    return-object v0
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "start"

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic g(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/UnipayAccountPlatform;
    .locals 0

    sput-object p0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    return-object p0
.end method

.method private g()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "setAccountStatusChangedListener"

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unipay/account/UnipayAccountPlatform;->o:Landroid/os/Handler;

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/unipay/account/AccountAPI;
    .locals 4

    const-string v0, "[PAY_UPDATE_ACCOUNT] [getInstance] instance(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-nez v0, :cond_0

    const-string v0, "method called before init()!!!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    return-object v0
.end method

.method public static getPlatform()Lcom/unipay/account/UnipayAccountPlatform;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "[PAY_UPDATE_ACCOUNT] [getPlatform] instance(%s)"

    new-array v1, v4, [Ljava/lang/Object;

    sget-object v2, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    const-string v0, "[PAY_UPDATE_ACCOUNT] [getPlatform] getInstance returns (%s)"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->getInstance()Lcom/unipay/account/AccountAPI;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-nez v0, :cond_0

    const-string v0, "method called before init()!!!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    return-object v0
.end method

.method static synthetic h(Lcom/unipay/account/UnipayAccountPlatform;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/account/UnipayAccountPlatform;->f()V

    return-void
.end method

.method private h()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/unipay/account/UnipayAccountPlatform;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/unipay/account/UnipayAccountPlatform;->b(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/unipay/account/UnipayAccountPlatform;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/account/UnipayAccountPlatform;->g()V

    return-void
.end method

.method private static i()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.unicom.dcLoader.Utils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getInstances"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "^^^^^^^^^^^^^^^^^^^^^^^^hps true"

    invoke-static {v2}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v3, "^^^^^^^^^^^^^^^^^^^^^^^^hps e(%s)"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnInitResultListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unipay/account/AccountAPI$BusyException;
        }
    .end annotation

    sget-object v1, Lcom/unipay/account/UnipayAccountPlatform;->e:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    const-string v0, "[UnipayAccountPlatform.init] state(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/unipay/account/UnipayAccountPlatform;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    sget-object v2, Lcom/unipay/account/UnipayAccountPlatform$a;->b:Lcom/unipay/account/UnipayAccountPlatform$a;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    sget-object v2, Lcom/unipay/account/UnipayAccountPlatform$a;->c:Lcom/unipay/account/UnipayAccountPlatform$a;

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/unipay/account/AccountAPI$BusyException;

    const-string v2, "initialization in progress"

    invoke-direct {v0, v2}, Lcom/unipay/account/AccountAPI$BusyException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    sget-object v2, Lcom/unipay/account/UnipayAccountPlatform$a;->d:Lcom/unipay/account/UnipayAccountPlatform$a;

    if-ne v0, v2, :cond_2

    const-string v0, "[UnipayAccountPlatform.init] already inited, bye"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    :cond_3
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->b:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform$a;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unipay/account/UnipayAccountPlatform;->c:Z

    new-instance v0, Lcom/unipay/account/UnipayAccountPlatform;

    invoke-direct {v0}, Lcom/unipay/account/UnipayAccountPlatform;-><init>()V

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnInitResultListener;)V

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic j(Lcom/unipay/account/UnipayAccountPlatform;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipay/account/UnipayAccountPlatform;->e()V

    return-void
.end method

.method private j()Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->l()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v3, "isInit"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "^^^^^^^^^^^^^^^^^^^^^^^^ipi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unipay/account/utils/OuterLog;->d(Ljava/lang/String;)V

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "^^^^^^^^^^^^^^^^^^^^^^^^ipi e(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic k(Lcom/unipay/account/UnipayAccountPlatform;)Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->m:Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;

    return-object v0
.end method

.method private static k()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "com.unicom.dcLoader.Utils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static l()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/unipay/account/UnipayAccountPlatform;->k()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstances"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->exception(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/unipay/account/UnipayAccountPlatform;)Z
    .locals 1

    invoke-direct {p0}, Lcom/unipay/account/UnipayAccountPlatform;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic m(Lcom/unipay/account/UnipayAccountPlatform;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public accountLogin(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Landroid/os/Handler;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    aput-object p3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public call(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "call"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public callLocalActivityMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/unipay/account/UnipayAccountPlatform;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "have NO idear how to load"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public callLocalServiceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/unipay/account/UnipayAccountPlatform;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p1, p2, p3, p4}, Lcom/unipay/account/UnipayAccountPlatform;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "have NO idear how to load"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enableFloaticon(Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "enableFloaticon"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public enterUsercenter(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "enterUsercenter"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public exitSDK()V
    .locals 2

    sget-object v1, Lcom/unipay/account/UnipayAccountPlatform;->e:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/unipay/account/UnipayAccountPlatform;->e()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipay/account/UnipayAccountPlatform;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform$a;->a:Lcom/unipay/account/UnipayAccountPlatform$a;

    invoke-static {v0}, Lcom/unipay/account/UnipayAccountPlatform;->c(Lcom/unipay/account/UnipayAccountPlatform$a;)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getClientInfo()Lcom/unipay/account/ClientInfo;
    .locals 3

    const/4 v2, 0x0

    const-string v0, "getClientInfo"

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;)Lcom/unipay/account/ClientInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserInfo()Lcom/unipay/account/UserInfo;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "getCurrentUserInfo"

    new-array v1, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/unipay/account/UnipayAccountPlatform;->c(Ljava/lang/String;)Lcom/unipay/account/UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getScreenOrientation()I
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    const-string v0, "getScreenOrientation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public invoke(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    sget-object v1, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v1, :cond_0

    const-string v1, "instance out of date!"

    invoke-static {v1}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const-string v1, "invoke"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v0

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v4

    aput-object p3, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public isLoggined()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "isLoggined"

    new-array v2, v1, [Ljava/lang/Class;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public loadLocalActivity(Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "loadLocalActivity"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/app/Activity;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadLocalService(Landroid/app/Service;I)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "loadLocalService"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Landroid/app/Service;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public login(Landroid/content/Context;Lcom/unipay/account/AccountAPI$OnLoginResultListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/unipay/account/AccountAPI$BusyException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/unipay/account/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/unipay/account/a;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;Lcom/unipay/account/AccountAPI$OnLoginResultListener;)V

    const-string v1, "login"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public login(Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "login"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;Lcom/unipay/account/AccountAPI$OnLogoutResultListener;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/unipay/account/c;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/unipay/account/c;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;Lcom/unipay/account/AccountAPI$OnLogoutResultListener;)V

    const-string v1, "logout"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public queryUserOrderBiz(Ljava/lang/String;Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/unipay/account/d;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/unipay/account/d;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;Lcom/unipay/account/AccountAPI$OnQueryUserOrderBizResultListener;)V

    const-string v1, "queryUserOrderBiz"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public refreshAccessToken(Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "requestRefreshAccessToken"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public refreshPoint(Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "requestRefreshPoint"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAccountStatusChangedHandler(Landroid/os/Handler;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "setAccountStatusChangedHandler"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Landroid/os/Handler;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setAccountStatusChangedListener(Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;)V
    .locals 1

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/unipay/account/UnipayAccountPlatform;->m:Lcom/unipay/account/AccountAPI$OnAccountStatusChangedListener;

    goto :goto_0
.end method

.method public setScreenOrientation(I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>>>-------------------- oreintation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    const-string v0, "setScreenOrientation"

    new-array v1, v3, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public switchAccount(Landroid/content/Context;Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/unipay/account/h;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/unipay/account/h;-><init>(Lcom/unipay/account/UnipayAccountPlatform;Landroid/os/Looper;Lcom/unipay/account/AccountAPI$OnSwitchAccountResultListener;)V

    const-string v1, "switchAccount"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Handler;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-direct {p0, v1, v2, v3}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public verifyAccountForWoPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/unipay/account/UnipayAccountPlatform;->d:Lcom/unipay/account/UnipayAccountPlatform;

    if-eq p0, v0, :cond_0

    const-string v0, "instance out of date!"

    invoke-static {v0}, Lcom/unipay/account/utils/OuterLog;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "verifyAccountForWoPay"

    new-array v1, v6, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v4

    const-class v2, Landroid/os/Handler;

    aput-object v2, v1, v5

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    aput-object p3, v2, v5

    invoke-direct {p0, v0, v1, v2}, Lcom/unipay/account/UnipayAccountPlatform;->a(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
