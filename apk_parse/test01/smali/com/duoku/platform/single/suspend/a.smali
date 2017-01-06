.class public Lcom/duoku/platform/single/suspend/a;
.super Lcom/duoku/platform/single/suspend/f;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/single/suspend/a$a;
    }
.end annotation


# static fields
.field private static j:Lcom/duoku/platform/single/suspend/a; = null

.field private static final k:I = 0x1

.field private static final l:I = 0x2

.field private static final m:I = 0x3

.field private static final n:I = 0x4

.field private static final o:I = 0x5

.field private static final p:I = 0x6


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/ImageView;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/RelativeLayout;

.field private E:Landroid/widget/RelativeLayout;

.field private F:Landroid/widget/ImageView;

.field private G:Landroid/view/animation/TranslateAnimation;

.field private H:Landroid/view/animation/TranslateAnimation;

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:I

.field private M:Ljava/util/Timer;

.field private N:Lcom/duoku/platform/single/suspend/a$a;

.field private O:Landroid/content/SharedPreferences;

.field private P:Landroid/os/Handler;

.field private q:Landroid/content/Context;

.field private r:Landroid/view/LayoutInflater;

.field private s:Landroid/view/WindowManager;

.field private t:Landroid/app/ActivityManager;

.field private u:Landroid/view/WindowManager$LayoutParams;

.field private v:Lcom/duoku/platform/single/item/b;

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/f;-><init>(Landroid/content/Context;)V

    iput-boolean v3, p0, Lcom/duoku/platform/single/suspend/a;->w:Z

    new-instance v0, Lcom/duoku/platform/single/suspend/b;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/b;-><init>(Lcom/duoku/platform/single/suspend/a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->P:Landroid/os/Handler;

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v1, "isShow"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "isView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->K:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->J:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->I:Z

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/a;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/duoku/platform/single/suspend/a;
    .locals 1

    sget-object v0, Lcom/duoku/platform/single/suspend/a;->j:Lcom/duoku/platform/single/suspend/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoku/platform/single/suspend/a;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/a;->j:Lcom/duoku/platform/single/suspend/a;

    :cond_0
    sget-object v0, Lcom/duoku/platform/single/suspend/a;->j:Lcom/duoku/platform/single/suspend/a;

    return-object v0
.end method

.method private a(Landroid/view/View;Z)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/duoku/platform/single/item/i;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/duoku/platform/single/item/i;

    invoke-static {}, Lcom/duoku/platform/single/k/i;->a()Lcom/duoku/platform/single/k/i;

    move-result-object v0

    sget v7, Lcom/duoku/platform/single/util/a;->iR:I

    if-nez p2, :cond_0

    sget v7, Lcom/duoku/platform/single/util/a;->iS:I

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/duoku/platform/single/item/i;->h()I

    move-result v6

    invoke-virtual/range {v0 .. v7}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v8, v2}, Lcom/duoku/platform/single/k/i;->a(Lcom/duoku/platform/single/suspend/q;Lcom/duoku/platform/single/item/i;Z)V

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/k/i;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->k()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/a;I)V
    .locals 0

    iput p1, p0, Lcom/duoku/platform/single/suspend/a;->L:I

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/a;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/a;Lcom/duoku/platform/single/item/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/a;->d(Lcom/duoku/platform/single/item/b;)V

    return-void
.end method

.method static synthetic a(Lcom/duoku/platform/single/suspend/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoku/platform/single/suspend/a;->I:Z

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/a;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/a;->E:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic b(Lcom/duoku/platform/single/suspend/a;Lcom/duoku/platform/single/item/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/a;->e(Lcom/duoku/platform/single/item/b;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->t:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->t:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->t:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/duoku/platform/single/suspend/a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->I:Z

    return v0
.end method

.method static synthetic d(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->B:Landroid/widget/ImageView;

    return-object v0
.end method

.method private d(Lcom/duoku/platform/single/item/b;)V
    .locals 5

    sget-boolean v0, Lcom/duoku/platform/single/suspend/k;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/suspend/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "ads_show"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->r:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "dk_banner_fix_view"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "rl_banner_fix_download"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->C:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->C:Landroid/widget/RelativeLayout;

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/a;->f(Lcom/duoku/platform/single/item/b;)Lcom/duoku/platform/single/item/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "iv_banner_fix_close"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->B:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->B:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "iv_banner_fix"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->A:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/a;->c(Lcom/duoku/platform/single/item/b;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/a;->d()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/duoku/platform/single/suspend/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    return-object v0
.end method

.method private e(Lcom/duoku/platform/single/item/b;)V
    .locals 5

    sget-boolean v0, Lcom/duoku/platform/single/suspend/k;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->l()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/duoku/platform/single/suspend/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "ads_show"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->j()V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->r:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "dk_banner_slide_view"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "iv_banner_slide"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->F:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->F:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/a;->f(Lcom/duoku/platform/single/item/b;)Lcom/duoku/platform/single/item/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "rl_banner_slide"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->E:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->G:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/duoku/platform/single/suspend/a;->c(Lcom/duoku/platform/single/item/b;)V

    :goto_0
    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/a;->c()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/a;->d()V

    goto :goto_0
.end method

.method private f(Lcom/duoku/platform/single/item/b;)Lcom/duoku/platform/single/item/i;
    .locals 2

    new-instance v0, Lcom/duoku/platform/single/item/i;

    invoke-direct {v0}, Lcom/duoku/platform/single/item/i;-><init>()V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->e(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->f(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->c(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->b(I)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->j(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/item/i;->g(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic f(Lcom/duoku/platform/single/suspend/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->n()V

    return-void
.end method

.method static synthetic g(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/duoku/platform/single/suspend/a;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->E:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic i(Lcom/duoku/platform/single/suspend/a;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->H:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic j(Lcom/duoku/platform/single/suspend/a;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    return v0
.end method

.method private j()V
    .locals 9

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->G:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->G:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->G:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, -0x40800000    # -1.0f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->H:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->H:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->H:Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->G:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/duoku/platform/single/suspend/c;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/suspend/c;-><init>(Lcom/duoku/platform/single/suspend/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->H:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/duoku/platform/single/suspend/d;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/suspend/d;-><init>(Lcom/duoku/platform/single/suspend/a;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method static synthetic k(Lcom/duoku/platform/single/suspend/a;)Lcom/duoku/platform/single/item/b;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->v:Lcom/duoku/platform/single/item/b;

    return-object v0
.end method

.method private k()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->i:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/duoku/platform/single/suspend/a;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/duoku/platform/single/suspend/a;)I
    .locals 1

    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->L:I

    return v0
.end method

.method private l()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->t:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->t:Landroid/app/ActivityManager;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->t:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->m()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic m(Lcom/duoku/platform/single/suspend/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->P:Landroid/os/Handler;

    return-object v0
.end method

.method private m()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private n()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public a()V
    .locals 8

    const-wide v6, 0x3fc3333333333333L    # 0.15

    const-wide v4, 0x3fb999999999999aL    # 0.1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-boolean v1, p0, Lcom/duoku/platform/single/suspend/a;->w:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-double v2, v0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0
.end method

.method public a(Lcom/duoku/platform/single/item/b;)V
    .locals 2

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->a()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->u:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x5a8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->r:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/a;->a()V

    return-void
.end method

.method public a(Lcom/duoku/platform/single/item/b;Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->t:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->t:Landroid/app/ActivityManager;

    :cond_0
    iput-object p1, p0, Lcom/duoku/platform/single/suspend/a;->v:Lcom/duoku/platform/single/item/b;

    iput-boolean p2, p0, Lcom/duoku/platform/single/suspend/a;->w:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "isBannerViewShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->I:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "isBanShowFinish"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->J:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->v:Lcom/duoku/platform/single/item/b;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/suspend/a;->a(Lcom/duoku/platform/single/item/b;)V

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->J:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->K:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isView"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->v:Lcom/duoku/platform/single/item/b;

    invoke-virtual {p0, v0}, Lcom/duoku/platform/single/suspend/a;->b(Lcom/duoku/platform/single/item/b;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 1

    invoke-static {}, Lcom/duoku/platform/single/h/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/duoku/platform/single/util/d;->a()Lcom/duoku/platform/single/util/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/single/util/d;->b()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->M:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->N:Lcom/duoku/platform/single/suspend/a$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->M:Ljava/util/Timer;

    new-instance v0, Lcom/duoku/platform/single/suspend/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/suspend/a$a;-><init>(Lcom/duoku/platform/single/suspend/a;Lcom/duoku/platform/single/suspend/a$a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->N:Lcom/duoku/platform/single/suspend/a$a;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->M:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->N:Lcom/duoku/platform/single/suspend/a$a;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Lcom/duoku/platform/single/item/b;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->b()I

    move-result v0

    iput v0, p0, Lcom/duoku/platform/single/suspend/a;->L:I

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->I:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->L:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/duoku/platform/single/suspend/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->L:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/a;->d(Lcom/duoku/platform/single/item/b;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/duoku/platform/single/suspend/a;->e(Lcom/duoku/platform/single/item/b;)V

    goto :goto_0
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isBanShowFinish"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->M:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->N:Lcom/duoku/platform/single/suspend/a$a;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->M:Ljava/util/Timer;

    new-instance v0, Lcom/duoku/platform/single/suspend/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/duoku/platform/single/suspend/a$a;-><init>(Lcom/duoku/platform/single/suspend/a;Lcom/duoku/platform/single/suspend/a$a;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/a;->N:Lcom/duoku/platform/single/suspend/a$a;

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->M:Ljava/util/Timer;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->N:Lcom/duoku/platform/single/suspend/a$a;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public c(Lcom/duoku/platform/single/item/b;)V
    .locals 2

    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->A:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->A:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/single/suspend/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->F:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Lcom/duoku/platform/single/item/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->F:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v1}, Lcom/duoku/platform/single/suspend/a;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public d()V
    .locals 3

    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->A:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->A:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "banner_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/duoku/platform/single/suspend/a;->y:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->F:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->F:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "slide_normal"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public e()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/duoku/platform/single/suspend/a;->x:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->x:Z

    return v0

    :cond_1
    iput-boolean v1, p0, Lcom/duoku/platform/single/suspend/a;->x:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->E:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v2, p0, Lcom/duoku/platform/single/suspend/a;->x:Z

    goto :goto_0

    :cond_4
    iput-boolean v1, p0, Lcom/duoku/platform/single/suspend/a;->x:Z

    goto :goto_0
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->P:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->E:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->P:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public g()V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "isBannerViewShow"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->I:Z

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/duoku/platform/single/suspend/a;->I:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->P:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->P:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public h()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/duoku/platform/single/suspend/a;->z:Landroid/widget/RelativeLayout;

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/duoku/platform/single/suspend/a;->D:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public i()V
    .locals 2

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->i:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/c;->a(J)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->v:Lcom/duoku/platform/single/item/b;

    invoke-virtual {v1}, Lcom/duoku/platform/single/item/b;->m()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-static {}, Lcom/duoku/platform/single/f/b;->d()Lcom/duoku/platform/single/f/b;

    move-result-object v0

    new-instance v1, Lcom/duoku/platform/single/suspend/e;

    invoke-direct {v1, p0}, Lcom/duoku/platform/single/suspend/e;-><init>(Lcom/duoku/platform/single/suspend/a;)V

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/f/b;->a(Lcom/duoku/platform/single/callback/IDKSDKCallBack;)V

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->n()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "rl_banner_fix_download"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->n()V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "ads_pv"

    const-string v2, ""

    const-string v3, ""

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p1, v5}, Lcom/duoku/platform/single/suspend/a;->a(Landroid/view/View;Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "iv_banner_slide"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->n()V

    invoke-static {}, Lcom/duoku/platform/single/n/a;->a()Lcom/duoku/platform/single/n/a;

    move-result-object v0

    const-string v1, "ads_pv"

    const-string v2, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/duoku/platform/single/n/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duoku/platform/single/suspend/a;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/a;->B:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/a;->q:Landroid/content/Context;

    const-string v2, "dk_banner_close_icon_click"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/duoku/platform/single/suspend/a;->n()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
