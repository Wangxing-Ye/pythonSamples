.class public Lorg/cocos2d/layers/CCLayer;
.super Lorg/cocos2d/nodes/CCNode;
.source "CCLayer.java"

# interfaces
.implements Lorg/cocos2d/protocols/CCTouchDelegateProtocol;
.implements Lorg/cocos2d/protocols/CCKeyDelegateProtocol;
.implements Landroid/hardware/SensorEventListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final accelerometer:Landroid/hardware/Sensor;

.field protected accelerometerUpdateRate:I

.field protected isAccelerometerEnabled_:Z

.field protected isKeyEnabled_:Z

.field protected isTouchEnabled_:Z

.field protected final sensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/cocos2d/layers/CCLayer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/cocos2d/layers/CCLayer;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    .line 120
    invoke-direct {p0}, Lorg/cocos2d/nodes/CCNode;-><init>()V

    .line 49
    iput v5, p0, Lorg/cocos2d/layers/CCLayer;->accelerometerUpdateRate:I

    .line 122
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lorg/cocos2d/layers/CCLayer;->sensorManager:Landroid/hardware/SensorManager;

    .line 125
    iget-object v1, p0, Lorg/cocos2d/layers/CCLayer;->sensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lorg/cocos2d/layers/CCLayer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lorg/cocos2d/layers/CCLayer;->accelerometer:Landroid/hardware/Sensor;

    .line 130
    :goto_0
    invoke-static {}, Lorg/cocos2d/nodes/CCDirector;->sharedDirector()Lorg/cocos2d/nodes/CCDirector;

    move-result-object v1

    invoke-virtual {v1}, Lorg/cocos2d/nodes/CCDirector;->winSize()Lorg/cocos2d/types/CGSize;

    move-result-object v0

    .line 131
    .local v0, "s":Lorg/cocos2d/types/CGSize;
    invoke-virtual {p0, v3}, Lorg/cocos2d/layers/CCLayer;->setRelativeAnchorPoint(Z)V

    .line 133
    invoke-static {v4, v4}, Lorg/cocos2d/types/CGPoint;->make(FF)Lorg/cocos2d/types/CGPoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/cocos2d/layers/CCLayer;->setAnchorPoint(Lorg/cocos2d/types/CGPoint;)V

    .line 134
    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCLayer;->setContentSize(Lorg/cocos2d/types/CGSize;)V

    .line 135
    invoke-virtual {p0, v3}, Lorg/cocos2d/layers/CCLayer;->setRelativeAnchorPoint(Z)V

    .line 137
    iput-boolean v3, p0, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled_:Z

    .line 138
    iput-boolean v3, p0, Lorg/cocos2d/layers/CCLayer;->isAccelerometerEnabled_:Z

    .line 139
    return-void

    .line 128
    .end local v0    # "s":Lorg/cocos2d/types/CGSize;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/cocos2d/layers/CCLayer;->accelerometer:Landroid/hardware/Sensor;

    goto :goto_0
.end method

.method public static node()Lorg/cocos2d/layers/CCLayer;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lorg/cocos2d/layers/CCLayer;

    invoke-direct {v0}, Lorg/cocos2d/layers/CCLayer;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic node()Lorg/cocos2d/nodes/CCNode;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lorg/cocos2d/layers/CCLayer;->node()Lorg/cocos2d/layers/CCLayer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ccAccelerometerChanged(FFF)V
    .locals 0
    .param p1, "accelX"    # F
    .param p2, "accelY"    # F
    .param p3, "accelZ"    # F

    .prologue
    .line 227
    return-void
.end method

.method public ccKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 247
    sget-boolean v0, Lorg/cocos2d/layers/CCLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Layer# ccKeyDown override me"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 248
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ccKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 254
    sget-boolean v0, Lorg/cocos2d/layers/CCLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Layer# ccKeyUp override me"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 255
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ccTouchesBegan(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    sget-boolean v0, Lorg/cocos2d/layers/CCLayer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Layer#ccTouchBegan override me"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 207
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public ccTouchesCancelled(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public ccTouchesEnded(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public ccTouchesMoved(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public enableAccelerometerWithRate(I)V
    .locals 1
    .param p1, "rate"    # I

    .prologue
    .line 93
    iput p1, p0, Lorg/cocos2d/layers/CCLayer;->accelerometerUpdateRate:I

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCLayer;->setIsAccelerometerEnabled(Z)V

    .line 95
    return-void
.end method

.method public isAccelerometerEnabled()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isAccelerometerEnabled_:Z

    return v0
.end method

.method public isKeyEnabled()Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isKeyEnabled_:Z

    return v0
.end method

.method public isTouchEnabled()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled_:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 232
    return-void
.end method

.method public onEnter()V
    .locals 2

    .prologue
    .line 174
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled_:Z

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCLayer;->registerWithTouchDispatcher()V

    .line 178
    :cond_0
    invoke-super {p0}, Lorg/cocos2d/nodes/CCNode;->onEnter()V

    .line 180
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isAccelerometerEnabled_:Z

    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCLayer;->registerWithAccelerometer()V

    .line 184
    :cond_1
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isKeyEnabled_:Z

    if-eqz v0, :cond_2

    .line 185
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/events/CCKeyDispatcher;->addDelegate(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;I)V

    .line 186
    :cond_2
    return-void
.end method

.method public onExit()V
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled_:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/events/CCTouchDispatcher;->removeDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;)V

    .line 194
    :cond_0
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isAccelerometerEnabled_:Z

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCLayer;->unregisterWithAccelerometer()V

    .line 198
    :cond_1
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isKeyEnabled_:Z

    if-eqz v0, :cond_2

    .line 199
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/events/CCKeyDispatcher;->removeDelegate(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;)V

    .line 201
    :cond_2
    invoke-super {p0}, Lorg/cocos2d/nodes/CCNode;->onExit()V

    .line 202
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v2, 0x1

    .line 239
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 240
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/cocos2d/layers/CCLayer;->ccAccelerometerChanged(FFF)V

    .line 242
    :cond_0
    return-void
.end method

.method protected registerWithAccelerometer()V
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lorg/cocos2d/layers/CCLayer;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lorg/cocos2d/layers/CCLayer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lorg/cocos2d/layers/CCLayer;->accelerometer:Landroid/hardware/Sensor;

    iget v3, p0, Lorg/cocos2d/layers/CCLayer;->accelerometerUpdateRate:I

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    .line 154
    .local v0, "registered":Z
    if-nez v0, :cond_0

    .line 155
    const-string v1, "Layer"

    const-string v2, "Could not register accelerometer sensor listener!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v0    # "registered":Z
    :cond_0
    return-void
.end method

.method protected registerWithTouchDispatcher()V
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/events/CCTouchDispatcher;->addDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;I)V

    .line 149
    return-void
.end method

.method public reverseEnabled()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v1, p0, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled_:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 60
    .local v0, "enabled":Z
    :goto_0
    invoke-virtual {p0, v0}, Lorg/cocos2d/layers/CCLayer;->setIsTouchEnabled(Z)V

    .line 61
    return-void

    .line 59
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsAccelerometerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 80
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isAccelerometerEnabled_:Z

    if-eq v0, p1, :cond_0

    .line 81
    iput-boolean p1, p0, Lorg/cocos2d/layers/CCLayer;->isAccelerometerEnabled_:Z

    .line 82
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCLayer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    if-eqz p1, :cond_1

    .line 84
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCLayer;->registerWithAccelerometer()V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCLayer;->unregisterWithAccelerometer()V

    goto :goto_0
.end method

.method public setIsKeyEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 107
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isKeyEnabled_:Z

    if-eq v0, p1, :cond_0

    .line 108
    iput-boolean p1, p0, Lorg/cocos2d/layers/CCLayer;->isKeyEnabled_:Z

    .line 109
    if-eqz p1, :cond_1

    .line 110
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/cocos2d/events/CCKeyDispatcher;->addDelegate(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {}, Lorg/cocos2d/events/CCKeyDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCKeyDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/events/CCKeyDispatcher;->removeDelegate(Lorg/cocos2d/protocols/CCKeyDelegateProtocol;)V

    goto :goto_0
.end method

.method public setIsTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 64
    iget-boolean v0, p0, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled_:Z

    if-eq v0, p1, :cond_0

    .line 65
    iput-boolean p1, p0, Lorg/cocos2d/layers/CCLayer;->isTouchEnabled_:Z

    .line 66
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCLayer;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lorg/cocos2d/layers/CCLayer;->registerWithTouchDispatcher()V

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lorg/cocos2d/events/CCTouchDispatcher;->sharedDispatcher()Lorg/cocos2d/events/CCTouchDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/cocos2d/events/CCTouchDispatcher;->removeDelegate(Lorg/cocos2d/protocols/CCTouchDelegateProtocol;)V

    goto :goto_0
.end method

.method protected unregisterWithAccelerometer()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/cocos2d/layers/CCLayer;->accelerometer:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/cocos2d/layers/CCLayer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lorg/cocos2d/layers/CCLayer;->accelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 166
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lorg/cocos2d/layers/CCLayer;->accelerometerUpdateRate:I

    .line 167
    return-void
.end method
