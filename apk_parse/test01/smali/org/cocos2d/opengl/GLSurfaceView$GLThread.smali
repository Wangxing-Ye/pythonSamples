.class Lorg/cocos2d/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cocos2d/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mGL:Ljavax/microedition/khronos/opengles/GL10;

.field private mHasFocus:Z

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRenderer:Lorg/cocos2d/opengl/GLSurfaceView$Renderer;

.field private mRequestRender:Z

.field private mSafeMode:Z

.field private mShouldExit:Z

.field private mWaitingForSurface:Z

.field private mWidth:I

.field final synthetic this$0:Lorg/cocos2d/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Lorg/cocos2d/opengl/GLSurfaceView;Lorg/cocos2d/opengl/GLSurfaceView$Renderer;)V
    .locals 3
    .param p2, "renderer"    # Lorg/cocos2d/opengl/GLSurfaceView$Renderer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1057
    iput-object p1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->this$0:Lorg/cocos2d/opengl/GLSurfaceView;

    .line 1051
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1472
    iput-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mSafeMode:Z

    .line 1052
    iput v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1053
    iput v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1054
    iput-boolean v2, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1055
    iput v2, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1056
    iput-object p2, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderer:Lorg/cocos2d/opengl/GLSurfaceView$Renderer;

    return-void
.end method

.method static synthetic access$0(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;Z)V
    .locals 0

    .prologue
    .line 1458
    iput-boolean p1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mExited:Z

    return-void
.end method

.method private guardedRun()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1089
    new-instance v10, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    iget-object v11, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->this$0:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-direct {v10, v11}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;-><init>(Lorg/cocos2d/opengl/GLSurfaceView;)V

    iput-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    .line 1090
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1091
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1093
    const/4 v5, 0x0

    .line 1094
    .local v5, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v1, 0x0

    .line 1095
    .local v1, "createEglSurface":Z
    const/4 v7, 0x0

    .line 1096
    .local v7, "sizeChanged":Z
    const/4 v9, 0x0

    .line 1097
    .local v9, "wantRenderNotification":Z
    const/4 v2, 0x0

    .line 1098
    .local v2, "doRenderNotification":Z
    const/4 v8, 0x0

    .line 1099
    .local v8, "w":I
    const/4 v6, 0x0

    .line 1100
    .local v6, "h":I
    const/4 v3, 0x0

    .line 1101
    .local v3, "event":Ljava/lang/Runnable;
    const/4 v4, 0x0

    .line 1103
    .local v4, "framesSinceResetHack":I
    :cond_0
    :goto_0
    :try_start_0
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v11

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1105
    :goto_1
    :try_start_1
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    if-eqz v10, :cond_1

    .line 1106
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1279
    const/4 v10, 0x0

    iput-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1283
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v11

    monitor-enter v11

    .line 1284
    :try_start_2
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1285
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1283
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 1109
    :cond_1
    :try_start_3
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1110
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/Runnable;

    move-object v3, v0

    .line 1103
    :goto_2
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1207
    if-eqz v3, :cond_e

    .line 1208
    :try_start_4
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1209
    const/4 v3, 0x0

    .line 1210
    goto :goto_0

    .line 1115
    :cond_2
    :try_start_5
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_3

    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v10, :cond_3

    .line 1117
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "releasing EGL surface because paused tid="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1123
    :cond_3
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v10, :cond_5

    .line 1125
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "noticed surfaceView surface lost tid="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_4

    .line 1128
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1130
    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1131
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1135
    :cond_5
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v10, :cond_6

    .line 1137
    const-string v10, "GLThread"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "noticed surfaceView surface acquired tid="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1140
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1143
    :cond_6
    if-eqz v2, :cond_7

    .line 1144
    const/4 v9, 0x0

    .line 1145
    const/4 v2, 0x0

    .line 1146
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1147
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1151
    :cond_7
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v10, :cond_d

    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v10, :cond_d

    .line 1152
    iget v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v10, :cond_d

    iget v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v10, :cond_d

    .line 1153
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v10, :cond_8

    iget v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_d

    .line 1155
    :cond_8
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v10, :cond_9

    .line 1157
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->verifyContext()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1158
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1159
    const/4 v10, 0x0

    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1163
    :cond_9
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-nez v10, :cond_a

    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglSurfaceLocked(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1164
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1165
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->start()V

    .line 1167
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    .line 1170
    :cond_a
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v10, :cond_b

    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-nez v10, :cond_b

    .line 1171
    const/4 v10, 0x1

    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1172
    const/4 v1, 0x1

    .line 1173
    const/4 v7, 0x1

    .line 1176
    :cond_b
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v10, :cond_d

    .line 1177
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->this$0:Lorg/cocos2d/opengl/GLSurfaceView;

    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->mSizeChanged:Z
    invoke-static {v10}, Lorg/cocos2d/opengl/GLSurfaceView;->access$7(Lorg/cocos2d/opengl/GLSurfaceView;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 1178
    const/4 v7, 0x1

    .line 1179
    iget v8, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1180
    iget v6, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1181
    const/4 v9, 0x1

    .line 1190
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->this$0:Lorg/cocos2d/opengl/GLSurfaceView;

    const/4 v12, 0x0

    invoke-static {v10, v12}, Lorg/cocos2d/opengl/GLSurfaceView;->access$8(Lorg/cocos2d/opengl/GLSurfaceView;Z)V

    .line 1194
    :goto_3
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1103
    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1278
    :catchall_2
    move-exception v10

    .line 1279
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1283
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v11

    monitor-enter v11

    .line 1284
    :try_start_7
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1285
    iget-object v12, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v12}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1283
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1287
    throw v10

    .line 1192
    :cond_c
    const/4 v10, 0x0

    :try_start_8
    iput-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    goto :goto_3

    .line 1203
    :cond_d
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 1213
    :cond_e
    :try_start_9
    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v10, :cond_12

    .line 1214
    if-eqz v1, :cond_f

    .line 1215
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    iget-object v11, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->this$0:Lorg/cocos2d/opengl/GLSurfaceView;

    invoke-virtual {v11}, Lorg/cocos2d/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->createSurface(Landroid/view/SurfaceHolder;)Ljavax/microedition/khronos/opengles/GL;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v5, v0

    .line 1216
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v10

    invoke-virtual {v10, v5}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1220
    iput-object v5, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mGL:Ljavax/microedition/khronos/opengles/GL10;

    .line 1221
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderer:Lorg/cocos2d/opengl/GLSurfaceView$Renderer;

    iget-object v11, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    iget-object v11, v11, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v10, v5, v11}, Lorg/cocos2d/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 1222
    const/4 v1, 0x0

    .line 1223
    const/4 v4, 0x0

    .line 1227
    :cond_f
    if-eqz v7, :cond_10

    .line 1231
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderer:Lorg/cocos2d/opengl/GLSurfaceView$Renderer;

    invoke-interface {v10, v5, v8, v6}, Lorg/cocos2d/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 1232
    const/4 v7, 0x0

    .line 1256
    :cond_10
    const/4 v10, 0x1

    if-gt v4, v10, :cond_11

    iget-boolean v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mSafeMode:Z

    if-nez v10, :cond_13

    .line 1257
    :cond_11
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderer:Lorg/cocos2d/opengl/GLSurfaceView$Renderer;

    invoke-interface {v10, v5}, Lorg/cocos2d/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1262
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 1264
    iget-object v10, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v10}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->swap()Z

    move-result v10

    if-nez v10, :cond_12

    .line 1266
    const-string v10, "GLThread"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "egl surface lost tid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->stopEglLocked()V

    .line 1273
    :cond_12
    if-eqz v9, :cond_0

    .line 1274
    const/4 v2, 0x1

    .line 1102
    goto/16 :goto_0

    .line 1259
    :cond_13
    const-string v10, "GLThread"

    const-string v11, "Safe Mode Wait..."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_4

    .line 1283
    :catchall_3
    move-exception v10

    :try_start_a
    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v10
.end method

.method private stopEglLocked()V
    .locals 1

    .prologue
    .line 1081
    iget-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1082
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1083
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEglHelper:Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Lorg/cocos2d/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1084
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->releaseEglSurfaceLocked(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;)V

    .line 1086
    :cond_0
    return-void
.end method


# virtual methods
.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1301
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1302
    :try_start_0
    iget v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1341
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1342
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1343
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1341
    monitor-exit v1

    .line 1345
    return-void

    .line 1341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1348
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1349
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1351
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1348
    monitor-exit v1

    .line 1353
    return-void

    .line 1348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasFocus"    # Z

    .prologue
    .line 1405
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1407
    :try_start_0
    sget-boolean v0, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    if-nez v0, :cond_0

    .line 1408
    iput-boolean p1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasFocus:Z

    .line 1412
    :goto_0
    const-string v0, "GLThread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mHasFocus "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1416
    const-string v1, "Main thread"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Focus "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasFocus:Z

    if-eqz v0, :cond_1

    const-string v0, "gained"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    return-void

    .line 1410
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lorg/cocos2d/opengl/GLSurfaceView;->noPause:Z

    goto :goto_0

    .line 1405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1416
    :cond_1
    const-string v0, "lost"

    goto :goto_1
.end method

.method public onWindowResize(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1356
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1357
    :try_start_0
    iput p1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1358
    iput p2, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1359
    iget-object v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->this$0:Lorg/cocos2d/opengl/GLSurfaceView;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/cocos2d/opengl/GLSurfaceView;->access$8(Lorg/cocos2d/opengl/GLSurfaceView;Z)V

    .line 1360
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1362
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1365
    :goto_0
    iget-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-eqz v1, :cond_1

    .line 1356
    :cond_0
    monitor-exit v2

    .line 1376
    return-void

    .line 1367
    :cond_1
    const-string v1, "Main thread"

    const-string v3, "onWindowResize waiting for render complete."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1370
    :try_start_1
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1356
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1442
    if-nez p1, :cond_0

    .line 1443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    :cond_0
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1446
    :try_start_0
    iget-object v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1445
    monitor-exit v1

    .line 1449
    return-void

    .line 1445
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1424
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1425
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1426
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1427
    :goto_0
    iget-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-eqz v1, :cond_0

    .line 1424
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    return-void

    .line 1429
    :cond_0
    :try_start_1
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1424
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1307
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1308
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1309
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1307
    monitor-exit v1

    .line 1311
    return-void

    .line 1307
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GLThread "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1068
    :try_start_0
    invoke-direct {p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1072
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;)V

    .line 1074
    :goto_0
    return-void

    .line 1069
    :catch_0
    move-exception v0

    .line 1072
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;)V

    goto :goto_0

    .line 1071
    :catchall_0
    move-exception v0

    .line 1072
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Lorg/cocos2d/opengl/GLSurfaceView$GLThread;)V

    .line 1073
    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1291
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1292
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1294
    :cond_1
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1295
    :try_start_0
    iput p1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1296
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1294
    monitor-exit v1

    .line 1298
    return-void

    .line 1294
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSafeMode(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 1452
    iput-boolean p1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mSafeMode:Z

    .line 1453
    return-void
.end method

.method public surfaceCreated()V
    .locals 2

    .prologue
    .line 1314
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1318
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1319
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1314
    monitor-exit v1

    .line 1321
    return-void

    .line 1314
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1324
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1328
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1329
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1330
    :goto_0
    iget-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/cocos2d/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-eqz v1, :cond_1

    .line 1324
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1338
    return-void

    .line 1332
    :cond_1
    :try_start_1
    # getter for: Lorg/cocos2d/opengl/GLSurfaceView;->sGLThreadManager:Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Lorg/cocos2d/opengl/GLSurfaceView;->access$6()Lorg/cocos2d/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1333
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1324
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
