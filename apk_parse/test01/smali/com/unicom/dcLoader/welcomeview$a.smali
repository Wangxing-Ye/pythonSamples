.class Lcom/unicom/dcLoader/welcomeview$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/dcLoader/welcomeview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/unicom/dcLoader/welcomeview;


# direct methods
.method private constructor <init>(Lcom/unicom/dcLoader/welcomeview;)V
    .locals 0

    iput-object p1, p0, Lcom/unicom/dcLoader/welcomeview$a;->a:Lcom/unicom/dcLoader/welcomeview;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/unicom/dcLoader/welcomeview;Lcom/unicom/dcLoader/welcomeview$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unicom/dcLoader/welcomeview$a;-><init>(Lcom/unicom/dcLoader/welcomeview;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/unicom/dcLoader/Utils;->getInstances()Lcom/unicom/dcLoader/Utils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/Utils;->isInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview$a;->a:Lcom/unicom/dcLoader/welcomeview;

    # getter for: Lcom/unicom/dcLoader/welcomeview;->mTask:Lcom/unicom/dcLoader/welcomeview$a;
    invoke-static {v0}, Lcom/unicom/dcLoader/welcomeview;->access$100(Lcom/unicom/dcLoader/welcomeview;)Lcom/unicom/dcLoader/welcomeview$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unicom/dcLoader/welcomeview$a;->cancel()Z

    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview$a;->a:Lcom/unicom/dcLoader/welcomeview;

    # getter for: Lcom/unicom/dcLoader/welcomeview;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/unicom/dcLoader/welcomeview;->access$200(Lcom/unicom/dcLoader/welcomeview;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview$a;->a:Lcom/unicom/dcLoader/welcomeview;

    # setter for: Lcom/unicom/dcLoader/welcomeview;->mTask:Lcom/unicom/dcLoader/welcomeview$a;
    invoke-static {v0, v1}, Lcom/unicom/dcLoader/welcomeview;->access$102(Lcom/unicom/dcLoader/welcomeview;Lcom/unicom/dcLoader/welcomeview$a;)Lcom/unicom/dcLoader/welcomeview$a;

    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview$a;->a:Lcom/unicom/dcLoader/welcomeview;

    # setter for: Lcom/unicom/dcLoader/welcomeview;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/unicom/dcLoader/welcomeview;->access$202(Lcom/unicom/dcLoader/welcomeview;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/unicom/dcLoader/welcomeview$a;->a:Lcom/unicom/dcLoader/welcomeview;

    new-instance v1, Lcom/unicom/dcLoader/welcomeview$a$1;

    invoke-direct {v1, p0}, Lcom/unicom/dcLoader/welcomeview$a$1;-><init>(Lcom/unicom/dcLoader/welcomeview$a;)V

    invoke-virtual {v0, v1}, Lcom/unicom/dcLoader/welcomeview;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "waiting ..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
