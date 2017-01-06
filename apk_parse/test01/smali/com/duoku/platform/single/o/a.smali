.class public Lcom/duoku/platform/single/o/a;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/duoku/platform/single/h/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/o/a$a;,
        Lcom/duoku/platform/single/o/a$b;
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field a:Lcom/duoku/platform/single/util/H;

.field private c:Ljava/util/Timer;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/app/PendingIntent;

.field private i:Landroid/app/PendingIntent;

.field private j:Lcom/duoku/platform/single/i/c;

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Lcom/duoku/platform/single/util/P;

.field private n:Z

.field private o:Lcom/duoku/platform/single/o/a$a;

.field private p:Lcom/duoku/platform/single/o/a$b;

.field private q:Z

.field private r:Landroid/telephony/SmsManager;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/duoku/platform/single/o/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/duoku/platform/single/i/c;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-class v0, Lcom/duoku/platform/single/o/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/single/util/H;->a(Ljava/lang/String;)Lcom/duoku/platform/single/util/H;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->a:Lcom/duoku/platform/single/util/H;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->c:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/duoku/platform/single/o/a;->d:Z

    iput-boolean v2, p0, Lcom/duoku/platform/single/o/a;->e:Z

    const v0, 0xea60

    iput v0, p0, Lcom/duoku/platform/single/o/a;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->g:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/duoku/platform/single/o/a;->k:I

    iput-boolean v2, p0, Lcom/duoku/platform/single/o/a;->n:Z

    iput-boolean v2, p0, Lcom/duoku/platform/single/o/a;->q:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->s:Ljava/lang/String;

    iput v1, p0, Lcom/duoku/platform/single/o/a;->x:I

    iput v1, p0, Lcom/duoku/platform/single/o/a;->y:I

    iput-object p4, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iput-object p2, p0, Lcom/duoku/platform/single/o/a;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoku/platform/single/o/a;->v:Ljava/lang/String;

    iput-object p1, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/duoku/platform/single/o/a;->b:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/o/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/o/a;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/o/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/o/a;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/o/a;)Lcom/duoku/platform/single/i/c;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/o/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/o/a;->d:Z

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/duoku/platform/single/o/a;->b:I

    return v0
.end method

.method static synthetic c(Lcom/duoku/platform/single/o/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/o/a;->f()V

    return-void
.end method

.method private d()V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/duoku/platform/single/o/a;->h()V

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->r:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/o/a;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/o/a;->i:Landroid/app/PendingIntent;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic d(Lcom/duoku/platform/single/o/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/o/a;->e()V

    return-void
.end method

.method private e()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->r:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/o/a;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/duoku/platform/single/o/a;->h:Landroid/app/PendingIntent;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic e(Lcom/duoku/platform/single/o/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/o/a;->e:Z

    return v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->p:Lcom/duoku/platform/single/o/a$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->p:Lcom/duoku/platform/single/o/a$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->p:Lcom/duoku/platform/single/o/a$b;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->o:Lcom/duoku/platform/single/o/a$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->o:Lcom/duoku/platform/single/o/a$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->o:Lcom/duoku/platform/single/o/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private g()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v0, v0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    const-string v1, ""

    iput-object v1, v0, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    :cond_0
    const-string v0, "#"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/duoku/platform/single/o/a;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v3, v3, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/duoku/platform/single/util/Q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->a:Lcom/duoku/platform/single/util/H;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 8

    const-string v5, "5328"

    invoke-static {}, Lcom/duoku/platform/single/g/c;->a()Lcom/duoku/platform/single/g/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v1, v1, Lcom/duoku/platform/single/i/c;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v2, v2, Lcom/duoku/platform/single/i/c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    invoke-virtual {v3}, Lcom/duoku/platform/single/i/c;->l()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v4, v4, Lcom/duoku/platform/single/i/c;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v6, v6, Lcom/duoku/platform/single/i/c;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/duoku/platform/single/o/a;->j:Lcom/duoku/platform/single/i/c;

    iget-object v7, v7, Lcom/duoku/platform/single/i/c;->h:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/g/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/duoku/platform/single/h/j;->b()Lcom/duoku/platform/single/h/g;

    move-result-object v1

    const-string v2, "http://gamesdk.m.duoku.com/standalone/makeOrder"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/single/h/g;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/single/h/h;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/high16 v5, 0x10000000

    const/4 v4, 0x0

    iput v4, p0, Lcom/duoku/platform/single/o/a;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/o/a;->n:Z

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/duoku/platform/single/util/P;->a(Landroid/content/Context;)Lcom/duoku/platform/single/util/P;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->m:Lcom/duoku/platform/single/util/P;

    new-instance v0, Lcom/duoku/platform/single/o/a$a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/o/a$a;-><init>(Lcom/duoku/platform/single/o/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->o:Lcom/duoku/platform/single/o/a$a;

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->o:Lcom/duoku/platform/single/o/a$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.multi.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/duoku/platform/single/o/a$b;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/o/a$b;-><init>(Lcom/duoku/platform/single/o/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->p:Lcom/duoku/platform/single/o/a$b;

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->p:Lcom/duoku/platform/single/o/a$b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/f/b;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/o/a;->q:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/duoku/platform/single/o/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->h:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.multi.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/duoku/platform/single/o/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/duoku/platform/single/o/a;->l:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->i:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/duoku/platform/single/util/g;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->s:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->r:Landroid/telephony/SmsManager;

    invoke-direct {p0}, Lcom/duoku/platform/single/o/a;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->w:Ljava/lang/String;

    return-void
.end method

.method public a(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/duoku/platform/single/h/a/a;I)V
    .locals 0

    return-void
.end method

.method public a(JJI)V
    .locals 0

    return-void
.end method

.method public a(Lcom/duoku/platform/single/h/h$a;I)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoku/platform/single/o/a;->e:Z

    iput-boolean v0, p0, Lcom/duoku/platform/single/o/a;->d:Z

    invoke-virtual {p0}, Lcom/duoku/platform/single/o/a;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/o/a;->c:Ljava/util/Timer;

    iget-object v0, p0, Lcom/duoku/platform/single/o/a;->c:Ljava/util/Timer;

    new-instance v1, Lcom/duoku/platform/single/o/b;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/o/b;-><init>(Lcom/duoku/platform/single/o/a;)V

    iget v2, p0, Lcom/duoku/platform/single/o/a;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/o/a;->d()V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
