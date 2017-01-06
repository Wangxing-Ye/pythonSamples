.class Lcom/umeng/analytics/game/c$2;
.super Lcom/umeng/analytics/g;
.source "InternalGameAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/game/c;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/game/c;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/game/c;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/umeng/analytics/game/c$2;->a:Lcom/umeng/analytics/game/c;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/umeng/analytics/game/c$2;->a:Lcom/umeng/analytics/game/c;

    invoke-static {v0}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/umeng/analytics/game/c$2;->a:Lcom/umeng/analytics/game/c;

    invoke-static {v0}, Lcom/umeng/analytics/game/c;->b(Lcom/umeng/analytics/game/c;)Lcom/umeng/analytics/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/z;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/game/c$2;->a:Lcom/umeng/analytics/game/c;

    invoke-static {v1}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/z;->e(Landroid/content/Context;)Z

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/umeng/analytics/game/c$2;->a:Lcom/umeng/analytics/game/c;

    invoke-static {v1}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/aly/l;->a(Landroid/content/Context;)Lu/aly/l;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/l;->c()V

    .line 101
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/game/c$2;->a:Lcom/umeng/analytics/game/c;

    invoke-static {v0}, Lcom/umeng/analytics/game/c;->b(Lcom/umeng/analytics/game/c;)Lcom/umeng/analytics/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/z;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/game/c$2;->a:Lcom/umeng/analytics/game/c;

    invoke-static {v1}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/z;->f(Landroid/content/Context;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c$2;->a:Lcom/umeng/analytics/game/c;

    invoke-static {v0}, Lcom/umeng/analytics/game/c;->a(Lcom/umeng/analytics/game/c;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/e;->b(Landroid/content/Context;)V

    .line 105
    :cond_1
    return-void
.end method
