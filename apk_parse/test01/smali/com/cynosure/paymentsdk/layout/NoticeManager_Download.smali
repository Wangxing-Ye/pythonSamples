.class public Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;
.super Ljava/lang/Object;
.source "NoticeManager_Download.java"


# static fields
.field private static volatile _instance:Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;


# instance fields
.field private _intent:Landroid/content/Intent;

.field private _notice:Landroid/app/Notification;

.field private _noticeManager:Landroid/app/NotificationManager;

.field private _pendingIntent:Landroid/app/PendingIntent;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_noticeManager:Landroid/app/NotificationManager;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_instance:Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_instance:Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;

    invoke-direct {v0}, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;-><init>()V

    sput-object v0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_instance:Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_instance:Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public removeNotice(I)V
    .locals 1
    .param p1, "apkID"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_noticeManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 61
    return-void
.end method

.method public showNotice(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "apkID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "savePath"    # Ljava/lang/String;
    .param p4, "progress"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_noticeManager:Landroid/app/NotificationManager;

    .line 37
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_notice:Landroid/app/Notification;

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_intent:Landroid/content/Intent;

    .line 40
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_intent:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_intent:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_pendingIntent:Landroid/app/PendingIntent;

    .line 46
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_notice:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 47
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_notice:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 48
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_notice:Landroid/app/Notification;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p2, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 51
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_noticeManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_notice:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 52
    return-void
.end method

.method public updateNotice(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "apkID"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "progress"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_notice:Landroid/app/Notification;

    invoke-static {}, Lcom/cynosure/paymentsdk/CoreContext;->getInstance()Lcom/cynosure/paymentsdk/CoreContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cynosure/paymentsdk/CoreContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 56
    iget-object v0, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_noticeManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/cynosure/paymentsdk/layout/NoticeManager_Download;->_notice:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 57
    return-void
.end method
