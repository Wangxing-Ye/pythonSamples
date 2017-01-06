.class Lcom/duoku/platform/single/receiver/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# instance fields
.field final synthetic a:Lcom/duoku/platform/single/receiver/PushMessageReceiver;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/duoku/platform/single/item/n;

.field private final synthetic d:Landroid/app/PendingIntent;

.field private final synthetic e:I

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/duoku/platform/single/receiver/PushMessageReceiver;Landroid/content/Context;Lcom/duoku/platform/single/item/n;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoku/platform/single/receiver/a;->a:Lcom/duoku/platform/single/receiver/PushMessageReceiver;

    iput-object p2, p0, Lcom/duoku/platform/single/receiver/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/duoku/platform/single/receiver/a;->c:Lcom/duoku/platform/single/item/n;

    iput-object p4, p0, Lcom/duoku/platform/single/receiver/a;->d:Landroid/app/PendingIntent;

    iput p5, p0, Lcom/duoku/platform/single/receiver/a;->e:I

    iput-object p6, p0, Lcom/duoku/platform/single/receiver/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/duoku/platform/single/receiver/a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 8

    iget-object v0, p0, Lcom/duoku/platform/single/receiver/a;->a:Lcom/duoku/platform/single/receiver/PushMessageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/single/receiver/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/receiver/a;->c:Lcom/duoku/platform/single/item/n;

    iget-object v3, p0, Lcom/duoku/platform/single/receiver/a;->d:Landroid/app/PendingIntent;

    iget v4, p0, Lcom/duoku/platform/single/receiver/a;->e:I

    iget-object v5, p0, Lcom/duoku/platform/single/receiver/a;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/duoku/platform/single/receiver/a;->g:Ljava/lang/String;

    move-object v6, p3

    invoke-static/range {v0 .. v7}, Lcom/duoku/platform/single/receiver/PushMessageReceiver;->a(Lcom/duoku/platform/single/receiver/PushMessageReceiver;Landroid/content/Context;Lcom/duoku/platform/single/item/n;Landroid/app/PendingIntent;ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 8

    iget-object v0, p0, Lcom/duoku/platform/single/receiver/a;->a:Lcom/duoku/platform/single/receiver/PushMessageReceiver;

    iget-object v1, p0, Lcom/duoku/platform/single/receiver/a;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/single/receiver/a;->c:Lcom/duoku/platform/single/item/n;

    iget-object v3, p0, Lcom/duoku/platform/single/receiver/a;->d:Landroid/app/PendingIntent;

    iget v4, p0, Lcom/duoku/platform/single/receiver/a;->e:I

    iget-object v5, p0, Lcom/duoku/platform/single/receiver/a;->f:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/duoku/platform/single/receiver/a;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcom/duoku/platform/single/receiver/PushMessageReceiver;->a(Lcom/duoku/platform/single/receiver/PushMessageReceiver;Landroid/content/Context;Lcom/duoku/platform/single/item/n;Landroid/app/PendingIntent;ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    return-void
.end method
