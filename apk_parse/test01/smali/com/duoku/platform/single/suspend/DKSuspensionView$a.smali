.class Lcom/duoku/platform/single/suspend/DKSuspensionView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/single/suspend/DKSuspensionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

.field private b:Lcom/duoku/platform/single/item/i;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/item/i;)V
    .locals 1

    iput-object p1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$a;->b:Lcom/duoku/platform/single/item/i;

    iput-object p2, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$a;->b:Lcom/duoku/platform/single/item/i;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$a;->a:Lcom/duoku/platform/single/suspend/DKSuspensionView;

    iget-object v1, p0, Lcom/duoku/platform/single/suspend/DKSuspensionView$a;->b:Lcom/duoku/platform/single/item/i;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/duoku/platform/single/suspend/DKSuspensionView;->a(Lcom/duoku/platform/single/suspend/DKSuspensionView;Lcom/duoku/platform/single/item/i;Z)V

    return-void
.end method
