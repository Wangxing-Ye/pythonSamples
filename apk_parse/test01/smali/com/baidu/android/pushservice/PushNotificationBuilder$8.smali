.class Lcom/baidu/android/pushservice/PushNotificationBuilder$8;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/android/pushservice/PushNotificationBuilder;->setNotificationVibrate([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[J

.field final synthetic b:Lcom/baidu/android/pushservice/PushNotificationBuilder;


# direct methods
.method constructor <init>(Lcom/baidu/android/pushservice/PushNotificationBuilder;[J)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    iput-object p2, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->a:[J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a(Lcom/baidu/android/pushservice/PushNotificationBuilder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a(Lcom/baidu/android/pushservice/PushNotificationBuilder;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    invoke-static {v0}, Lcom/baidu/android/pushservice/PushNotificationBuilder;->a(Lcom/baidu/android/pushservice/PushNotificationBuilder;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->b:Lcom/baidu/android/pushservice/PushNotificationBuilder;

    iget-object v0, v0, Lcom/baidu/android/pushservice/PushNotificationBuilder;->mInstance:Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;

    iget-object v1, p0, Lcom/baidu/android/pushservice/PushNotificationBuilder$8;->a:[J

    invoke-virtual {v0, v1}, Lcom/baidu/android/pushservice/apiproxy/BridgePushNotificationBuilder;->setNotificationVibrate([J)V

    goto :goto_1
.end method
