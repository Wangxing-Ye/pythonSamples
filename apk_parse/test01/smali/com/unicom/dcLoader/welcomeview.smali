.class public Lcom/unicom/dcLoader/welcomeview;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/dcLoader/welcomeview$1;,
        Lcom/unicom/dcLoader/welcomeview$a;
    }
.end annotation


# instance fields
.field private mTask:Lcom/unicom/dcLoader/welcomeview$a;

.field private mTimer:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/unicom/dcLoader/welcomeview;)Lcom/unicom/dcLoader/welcomeview$a;
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview;->mTask:Lcom/unicom/dcLoader/welcomeview$a;

    return-object v0
.end method

.method static synthetic access$102(Lcom/unicom/dcLoader/welcomeview;Lcom/unicom/dcLoader/welcomeview$a;)Lcom/unicom/dcLoader/welcomeview$a;
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/welcomeview;->mTask:Lcom/unicom/dcLoader/welcomeview$a;

    return-object p1
.end method

.method static synthetic access$200(Lcom/unicom/dcLoader/welcomeview;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview;->mTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/unicom/dcLoader/welcomeview;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/welcomeview;->mTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/unicom/dcLoader/welcomeview;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/welcomeview;->callwelcome(Landroid/content/Context;)V

    return-void
.end method

.method private callwelcome(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    const-string v0, "com.unicom.dcLoader.Utils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstances"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance v0, Lcom/unicom/dcLoader/b;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/unicom/dcLoader/welcomeview;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "unicom_base/wostore_welcome.png"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/unicom/dcLoader/b;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    invoke-virtual {p0, v0}, Lcom/unicom/dcLoader/welcomeview;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/unicom/dcLoader/welcomeview;->mTimer:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview;->mTask:Lcom/unicom/dcLoader/welcomeview$a;

    if-nez v0, :cond_1

    new-instance v0, Lcom/unicom/dcLoader/welcomeview$a;

    invoke-direct {v0, p0, v4}, Lcom/unicom/dcLoader/welcomeview$a;-><init>(Lcom/unicom/dcLoader/welcomeview;Lcom/unicom/dcLoader/welcomeview$1;)V

    iput-object v0, p0, Lcom/unicom/dcLoader/welcomeview;->mTask:Lcom/unicom/dcLoader/welcomeview$a;

    :goto_1
    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/unicom/dcLoader/welcomeview;->mTask:Lcom/unicom/dcLoader/welcomeview$a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview;->mTask:Lcom/unicom/dcLoader/welcomeview$a;

    invoke-virtual {v0}, Lcom/unicom/dcLoader/welcomeview$a;->cancel()Z

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
