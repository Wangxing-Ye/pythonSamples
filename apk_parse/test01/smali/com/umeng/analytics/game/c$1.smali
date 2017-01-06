.class Lcom/umeng/analytics/game/c$1;
.super Lcom/umeng/analytics/g;
.source "InternalGameAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/analytics/game/c;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/umeng/analytics/game/c$1;->c:Lcom/umeng/analytics/game/c;

    iput-object p2, p0, Lcom/umeng/analytics/game/c$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/game/c$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/umeng/analytics/game/c$1;->c:Lcom/umeng/analytics/game/c;

    invoke-static {v0}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/umeng/analytics/game/c$1;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/analytics/game/c$1;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c$1;->c:Lcom/umeng/analytics/game/c;

    invoke-static {v0}, Lcom/umeng/analytics/game/c;->b(Lcom/umeng/analytics/game/c;)Lcom/umeng/analytics/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/z;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/game/c$1;->c:Lcom/umeng/analytics/game/c;

    invoke-static {v1}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/z;->e(Landroid/content/Context;)Z

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/umeng/analytics/game/c$1;->c:Lcom/umeng/analytics/game/c;

    invoke-static {v1}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/l;->c()V

    .line 82
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/game/c$1;->c:Lcom/umeng/analytics/game/c;

    invoke-static {v0}, Lcom/umeng/analytics/game/c;->b(Lcom/umeng/analytics/game/c;)Lcom/umeng/analytics/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/z;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/game/c$1;->c:Lcom/umeng/analytics/game/c;

    invoke-static {v1}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/z;->f(Landroid/content/Context;)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/game/c$1;->c:Lcom/umeng/analytics/game/c;

    invoke-static {v0}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/game/c$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/analytics/game/c$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    return-void
.end method
