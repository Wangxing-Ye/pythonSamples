.class Lcom/duoku/platform/single/f/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/callback/a;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/f/d;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/f/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/f/e;->a:Lcom/duoku/platform/single/f/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/duoku/platform/single/f/d;->d()Lcom/duoku/platform/single/util/H;

    move-result-object v0

    const-string v1, "onComplete"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/single/util/H;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/duoku/platform/single/setting/DKSingleSDKSettings;->CROSSRECOMMEND_INIT_FINSIH:Z

    return-void
.end method
