.class Lcom/duoku/platform/single/ui/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoku/platform/single/ui/DKLotteryDrawActivity$b;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/ui/g;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const-string v0, "dk_draw_title_iv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/duoku/platform/single/ui/g;->a:Lcom/duoku/platform/single/ui/DKLotteryDrawActivity;

    const-string v2, "dk_draw_icon_happy"

    invoke-static {v1, v2}, Lcom/duoku/platform/single/util/M;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "dk_draw_title_main_tv"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u6728\u6709\u4e2d\u8fc7\u5956\uff0c\u52a0\u6cb9\u54e6\uff01"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(ILandroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
