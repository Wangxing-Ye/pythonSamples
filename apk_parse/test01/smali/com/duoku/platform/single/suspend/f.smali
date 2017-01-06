.class public Lcom/duoku/platform/single/suspend/f;
.super Ljava/lang/Object;


# static fields
.field protected static a:I = 0x0

.field protected static b:Z = false

.field protected static c:Landroid/widget/ImageView; = null

.field protected static d:Landroid/view/View; = null

.field protected static h:I = 0x0

.field private static final j:Ljava/lang/String; = "DKBaseSuspensionView"


# instance fields
.field protected e:Landroid/os/Handler;

.field protected f:J

.field protected g:J

.field protected i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/duoku/platform/single/suspend/f;->a:I

    const/4 v0, 0x0

    sput v0, Lcom/duoku/platform/single/suspend/f;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/f;->e:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/duoku/platform/single/suspend/f;->f:J

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/duoku/platform/single/suspend/f;->g:J

    new-instance v0, Lcom/duoku/platform/single/suspend/g;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/g;-><init>(Lcom/duoku/platform/single/suspend/f;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/f;->i:Ljava/lang/Runnable;

    sget-object v0, Lcom/duoku/platform/single/suspend/f;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/f;->c:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/f;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/f;->e:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/f;->e:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/duoku/platform/single/suspend/f;->f:J

    const-wide/16 v0, 0xfa0

    iput-wide v0, p0, Lcom/duoku/platform/single/suspend/f;->g:J

    new-instance v0, Lcom/duoku/platform/single/suspend/g;

    invoke-direct {v0, p0}, Lcom/duoku/platform/single/suspend/g;-><init>(Lcom/duoku/platform/single/suspend/f;)V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/f;->i:Ljava/lang/Runnable;

    sget-object v0, Lcom/duoku/platform/single/suspend/f;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/duoku/platform/single/suspend/f;->c:Landroid/widget/ImageView;

    :cond_0
    iget-object v0, p0, Lcom/duoku/platform/single/suspend/f;->e:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/f;->e:Landroid/os/Handler;

    :cond_1
    return-void
.end method
