.class Lcom/umeng/analytics/game/c;
.super Ljava/lang/Object;
.source "InternalGameAgent.java"

# interfaces
.implements Lcom/umeng/analytics/c;


# instance fields
.field private a:Lcom/umeng/analytics/d;

.field private b:Lcom/umeng/analytics/game/b;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private x:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/d;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/d;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    .line 22
    const/16 v0, 0x64

    iput v0, p0, Lcom/umeng/analytics/game/c;->c:I

    .line 23
    iput v1, p0, Lcom/umeng/analytics/game/c;->d:I

    .line 25
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/d;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d;->a(I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/game/c;->e:I

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/analytics/game/c;->f:I

    .line 29
    iput v1, p0, Lcom/umeng/analytics/game/c;->g:I

    .line 31
    const-string v0, "level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->h:Ljava/lang/String;

    .line 32
    const-string v0, "pay"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->i:Ljava/lang/String;

    .line 33
    const-string v0, "buy"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->j:Ljava/lang/String;

    .line 34
    const-string v0, "use"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->k:Ljava/lang/String;

    .line 35
    const-string v0, "bonus"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->l:Ljava/lang/String;

    .line 37
    const-string v0, "item"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->m:Ljava/lang/String;

    .line 38
    const-string v0, "cash"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->n:Ljava/lang/String;

    .line 39
    const-string v0, "coin"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->o:Ljava/lang/String;

    .line 40
    const-string v0, "source"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->p:Ljava/lang/String;

    .line 41
    const-string v0, "amount"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->q:Ljava/lang/String;

    .line 42
    const-string v0, "user_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->r:Ljava/lang/String;

    .line 43
    const-string v0, "bonus_source"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->s:Ljava/lang/String;

    .line 45
    const-string v0, "level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->t:Ljava/lang/String;

    .line 46
    const-string v0, "status"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->u:Ljava/lang/String;

    .line 47
    const-string v0, "duration"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->v:Ljava/lang/String;

    .line 49
    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->w:Ljava/lang/String;

    .line 53
    sput-boolean v1, Lcom/umeng/analytics/game/a;->a:Z

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 142
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v0, Lcom/umeng/analytics/game/c$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/game/c$4;-><init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/analytics/game/c;)Lcom/umeng/analytics/d;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/d;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/analytics/game/c;)Lcom/umeng/analytics/game/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 278
    const-string v0, "MobclickAgent"

    const-string v1, "App resume from background"

    invoke-static {v0, v1}, Lu/aly/br;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 281
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/game/a;->a:Z

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/b;->b()V

    goto :goto_0
.end method

.method a(DDI)V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    .line 198
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 199
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :goto_0
    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 205
    const-string v1, "cash"

    mul-double v2, p1, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v1, "coin"

    mul-double v2, p3, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v1, "source"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/d;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    const-string v3, "pay"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(DI)V
    .locals 4

    .prologue
    .line 257
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 258
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    const-string v1, "coin"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v1, "bonus_source"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/d;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    const-string v3, "bonus"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(DLjava/lang/String;IDI)V
    .locals 6

    .prologue
    .line 216
    int-to-double v0, p4

    mul-double v3, p5, v0

    move-object v0, p0

    move-wide v1, p1

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/analytics/game/c;->a(DDI)V

    .line 217
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    .line 218
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v0, "MobclickAgent"

    const-string v1, "Context is null, can\'t init GameAgent"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/d;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/c;)V

    .line 64
    new-instance v0, Lcom/umeng/analytics/game/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/game/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iput-object p1, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    .line 112
    return-void
.end method

.method a(Ljava/lang/String;ID)V
    .locals 6

    .prologue
    .line 221
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 222
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :goto_0
    return-void

    .line 226
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 228
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v1, "coin"

    int-to-double v2, p2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/d;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    const-string v3, "buy"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;IDI)V
    .locals 2

    .prologue
    .line 273
    int-to-double v0, p2

    mul-double/2addr v0, p3

    invoke-virtual {p0, v0, v1, p5}, Lcom/umeng/analytics/game/c;->a(DI)V

    .line 274
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    .line 275
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/umeng/analytics/game/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/game/c$1;-><init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method a(Z)V
    .locals 5

    .prologue
    .line 68
    const-string v0, "MobclickAgent"

    const-string v1, "Trace sleep time : %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/br;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sput-boolean p1, Lcom/umeng/analytics/game/a;->a:Z

    .line 71
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 292
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/game/a;->a:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/b;->a()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iput-object p1, v0, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    .line 124
    new-instance v0, Lcom/umeng/analytics/game/c$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/game/c$3;-><init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;ID)V
    .locals 6

    .prologue
    .line 239
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 240
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 244
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "coin"

    int-to-double v2, p2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/d;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    const-string v3, "use"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method c()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/umeng/analytics/game/c$2;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/game/c$2;-><init>(Lcom/umeng/analytics/game/c;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->a(Ljava/lang/Runnable;)V

    .line 108
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 179
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->x:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 191
    const-string v0, "MobclickAgent"

    const-string v1, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0, v1}, Lu/aly/br;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
