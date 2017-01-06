.class public Lorg/cocos2d/sound/SoundEngine;
.super Ljava/lang/Object;
.source "SoundEngine.java"


# static fields
.field static _sharedEngine:Lorg/cocos2d/sound/SoundEngine;


# instance fields
.field effectsMap:Lorg/cocos2d/utils/collections/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/IntMap",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field effectsVolume:Ljava/lang/Float;

.field lastSndId:I

.field mute:Z

.field prevEffectsVolume:Ljava/lang/Float;

.field prevSoundsVolume:Ljava/lang/Float;

.field soundsMap:Lorg/cocos2d/utils/collections/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/IntMap",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field soundsVolume:Ljava/lang/Float;

.field sp:Landroid/media/SoundPool;

.field streamsMap:Lorg/cocos2d/utils/collections/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/cocos2d/utils/collections/IntMap",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lorg/cocos2d/sound/SoundEngine;->_sharedEngine:Lorg/cocos2d/sound/SoundEngine;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lorg/cocos2d/utils/collections/IntMap;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/IntMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->effectsMap:Lorg/cocos2d/utils/collections/IntMap;

    .line 17
    new-instance v0, Lorg/cocos2d/utils/collections/IntMap;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/IntMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->streamsMap:Lorg/cocos2d/utils/collections/IntMap;

    .line 20
    new-instance v0, Lorg/cocos2d/utils/collections/IntMap;

    invoke-direct {v0}, Lorg/cocos2d/utils/collections/IntMap;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    .line 21
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->sp:Landroid/media/SoundPool;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lorg/cocos2d/sound/SoundEngine;->lastSndId:I

    .line 23
    iput-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->prevEffectsVolume:Ljava/lang/Float;

    .line 24
    iput-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->prevSoundsVolume:Ljava/lang/Float;

    .line 25
    iput-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    .line 26
    iput-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    .line 27
    iput-boolean v4, p0, Lorg/cocos2d/sound/SoundEngine;->mute:Z

    .line 14
    return-void
.end method

.method public static purgeSharedEngine()V
    .locals 2

    .prologue
    .line 41
    const-class v1, Lorg/cocos2d/sound/SoundEngine;

    monitor-enter v1

    .line 42
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lorg/cocos2d/sound/SoundEngine;->_sharedEngine:Lorg/cocos2d/sound/SoundEngine;

    .line 41
    monitor-exit v1

    .line 44
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static sharedEngine()Lorg/cocos2d/sound/SoundEngine;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lorg/cocos2d/sound/SoundEngine;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lorg/cocos2d/sound/SoundEngine;->_sharedEngine:Lorg/cocos2d/sound/SoundEngine;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lorg/cocos2d/sound/SoundEngine;

    invoke-direct {v0}, Lorg/cocos2d/sound/SoundEngine;-><init>()V

    sput-object v0, Lorg/cocos2d/sound/SoundEngine;->_sharedEngine:Lorg/cocos2d/sound/SoundEngine;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    sget-object v0, Lorg/cocos2d/sound/SoundEngine;->_sharedEngine:Lorg/cocos2d/sound/SoundEngine;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getEffectsVolume()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    return-object v0
.end method

.method public getSoundsVolume()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    return-object v0
.end method

.method public isMute()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/cocos2d/sound/SoundEngine;->mute:Z

    return v0
.end method

.method public mute()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-boolean v0, p0, Lorg/cocos2d/sound/SoundEngine;->mute:Z

    if-eqz v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    iput-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->prevEffectsVolume:Ljava/lang/Float;

    .line 80
    iget-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    iput-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->prevSoundsVolume:Ljava/lang/Float;

    .line 81
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    .line 82
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/cocos2d/sound/SoundEngine;->setSoundVolume(Ljava/lang/Float;)V

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/cocos2d/sound/SoundEngine;->mute:Z

    goto :goto_0
.end method

.method public pauseSound()V
    .locals 5

    .prologue
    .line 183
    iget v2, p0, Lorg/cocos2d/sound/SoundEngine;->lastSndId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 193
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v1, 0x0

    .line 187
    .local v1, "mp":Landroid/media/MediaPlayer;
    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    monitor-enter v3

    .line 188
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    iget v4, p0, Lorg/cocos2d/sound/SoundEngine;->lastSndId:I

    invoke-virtual {v2, v4}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/MediaPlayer;

    move-object v1, v0

    .line 189
    if-nez v1, :cond_1

    .line 190
    monitor-exit v3

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0
.end method

.method public playEffect(Landroid/content/Context;I)V
    .locals 10
    .param p1, "app"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 111
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 112
    .local v8, "sndId":Ljava/lang/Integer;
    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->effectsMap:Lorg/cocos2d/utils/collections/IntMap;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->effectsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1, p2}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 114
    if-nez v8, :cond_0

    .line 115
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->sp:Landroid/media/SoundPool;

    const/4 v4, 0x0

    invoke-virtual {v1, p1, p2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 116
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->effectsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1, p2, v8}, Lorg/cocos2d/utils/collections/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->sp:Landroid/media/SoundPool;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v4, v3

    move v6, v5

    move v7, v3

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v9

    .line 121
    .local v9, "streamId":I
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 122
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->sp:Landroid/media/SoundPool;

    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v9, v2, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->streamsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/cocos2d/utils/collections/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void

    .line 112
    .end local v9    # "streamId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public playSound(Landroid/content/Context;IZ)V
    .locals 5
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "loop"    # Z

    .prologue
    .line 147
    iget v3, p0, Lorg/cocos2d/sound/SoundEngine;->lastSndId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/cocos2d/sound/SoundEngine;->pauseSound()V

    .line 151
    :cond_0
    const/4 v2, 0x0

    .line 152
    .local v2, "mp":Landroid/media/MediaPlayer;
    iget-object v4, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    monitor-enter v4

    .line 153
    :try_start_0
    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v3, p2}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/media/MediaPlayer;

    move-object v2, v0

    .line 154
    if-nez v2, :cond_3

    .line 155
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 158
    if-nez v2, :cond_2

    .line 159
    monitor-exit v4

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v3, p2, v2}, Lorg/cocos2d/utils/collections/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    iput p2, p0, Lorg/cocos2d/sound/SoundEngine;->lastSndId:I

    .line 174
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 175
    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 178
    :cond_4
    if-eqz p3, :cond_1

    .line 179
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 167
    :catch_1
    move-exception v1

    .line 169
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public preloadEffect(Landroid/content/Context;I)V
    .locals 4
    .param p1, "app"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 100
    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->effectsMap:Lorg/cocos2d/utils/collections/IntMap;

    monitor-enter v2

    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->effectsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1, p2}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 102
    .local v0, "sndId":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 103
    monitor-exit v2

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->sp:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->effectsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1, p2, v0}, Lorg/cocos2d/utils/collections/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 100
    monitor-exit v2

    goto :goto_0

    .end local v0    # "sndId":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preloadSound(Landroid/content/Context;I)V
    .locals 3
    .param p1, "ctxt"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 135
    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    monitor-enter v2

    .line 136
    :try_start_0
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1, p2}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 137
    .local v0, "mp":Landroid/media/MediaPlayer;
    if-eqz v0, :cond_0

    .line 138
    monitor-exit v2

    .line 144
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-static {p1, p2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1, p2, v0}, Lorg/cocos2d/utils/collections/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v2

    goto :goto_0

    .end local v0    # "mp":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public realesAllEffects()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->sp:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 232
    return-void
.end method

.method public realesAllSounds()V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1}, Lorg/cocos2d/utils/collections/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1}, Lorg/cocos2d/utils/collections/IntMap;->clear()V

    .line 227
    const/4 v1, -0x1

    iput v1, p0, Lorg/cocos2d/sound/SoundEngine;->lastSndId:I

    .line 228
    return-void

    .line 222
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 223
    .local v0, "mp":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<Landroid/media/MediaPlayer;>;"
    invoke-virtual {v0}, Lorg/cocos2d/utils/collections/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0
.end method

.method public realesSound(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "mp":Landroid/media/MediaPlayer;
    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    monitor-enter v3

    .line 212
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v2, p1}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/MediaPlayer;

    move-object v1, v0

    .line 213
    if-eqz v1, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 215
    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v2, p1}, Lorg/cocos2d/utils/collections/IntMap;->remove(I)Ljava/lang/Object;

    .line 211
    :cond_0
    monitor-exit v3

    .line 218
    return-void

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public resumeSound()V
    .locals 5

    .prologue
    .line 196
    iget v2, p0, Lorg/cocos2d/sound/SoundEngine;->lastSndId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v1, 0x0

    .line 200
    .local v1, "mp":Landroid/media/MediaPlayer;
    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    monitor-enter v3

    .line 201
    :try_start_0
    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    iget v4, p0, Lorg/cocos2d/sound/SoundEngine;->lastSndId:I

    invoke-virtual {v2, v4}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/media/MediaPlayer;

    move-object v1, v0

    .line 202
    if-nez v1, :cond_1

    .line 203
    monitor-exit v3

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method public setEffectsVolume(Ljava/lang/Float;)V
    .locals 1
    .param p1, "volume"    # Ljava/lang/Float;

    .prologue
    .line 47
    iget-boolean v0, p0, Lorg/cocos2d/sound/SoundEngine;->mute:Z

    if-eqz v0, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    goto :goto_0
.end method

.method public setSoundVolume(Ljava/lang/Float;)V
    .locals 5
    .param p1, "volume"    # Ljava/lang/Float;

    .prologue
    .line 58
    iget-boolean v2, p0, Lorg/cocos2d/sound/SoundEngine;->mute:Z

    if-eqz v2, :cond_1

    .line 69
    :cond_0
    return-void

    .line 61
    :cond_1
    iput-object p1, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    .line 62
    iget-object v2, p0, Lorg/cocos2d/sound/SoundEngine;->soundsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v2}, Lorg/cocos2d/utils/collections/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/utils/collections/IntMap$Entry;

    .line 64
    .local v0, "each":Lorg/cocos2d/utils/collections/IntMap$Entry;, "Lorg/cocos2d/utils/collections/IntMap$Entry<Landroid/media/MediaPlayer;>;"
    invoke-virtual {v0}, Lorg/cocos2d/utils/collections/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 65
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_2

    .line 66
    iget-object v3, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lorg/cocos2d/sound/SoundEngine;->soundsVolume:Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public stopEffect(Landroid/content/Context;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 128
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->streamsMap:Lorg/cocos2d/utils/collections/IntMap;

    invoke-virtual {v1, p2}, Lorg/cocos2d/utils/collections/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 129
    .local v0, "sid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 130
    iget-object v1, p0, Lorg/cocos2d/sound/SoundEngine;->sp:Landroid/media/SoundPool;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 132
    :cond_0
    return-void
.end method

.method public unmute()V
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/cocos2d/sound/SoundEngine;->mute:Z

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->prevEffectsVolume:Ljava/lang/Float;

    iput-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->effectsVolume:Ljava/lang/Float;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/cocos2d/sound/SoundEngine;->mute:Z

    .line 92
    iget-object v0, p0, Lorg/cocos2d/sound/SoundEngine;->prevSoundsVolume:Ljava/lang/Float;

    invoke-virtual {p0, v0}, Lorg/cocos2d/sound/SoundEngine;->setSoundVolume(Ljava/lang/Float;)V

    goto :goto_0
.end method
