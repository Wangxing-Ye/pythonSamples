.class public Lcom/sns/game/layer/RandomTaskSystem;
.super Ljava/lang/Object;
.source "RandomTaskSystem.java"


# static fields
.field public static final ACTIVATE_INTERVAL:F = 3.0f

.field public static final PANEL_ZORDER:I = 0x3e8

.field private static system:Lcom/sns/game/layer/RandomTaskSystem;


# instance fields
.field private actionNode:Lorg/cocos2d/nodes/CCNode;

.field private bean:Lcom/sns/game/database/bean/RandomTaskBean;

.field public compleCount:I

.field private panel:Lcom/sns/game/ui/RandomTaskPanel;

.field public second:I

.field private state:I

.field private target_:Lorg/cocos2d/layers/CCLayer;

.field private visible:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->second:I

    .line 53
    iput v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->compleCount:I

    .line 30
    return-void
.end method

.method private activatePanel()V
    .locals 6

    .prologue
    const/16 v5, 0x999

    .line 209
    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    if-eqz v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1, v5}, Lorg/cocos2d/nodes/CCNode;->getAction(I)Lorg/cocos2d/actions/base/CCAction;

    move-result-object v1

    if-nez v1, :cond_0

    .line 216
    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 217
    const-string v4, "callBack_selector_activatePanel"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 214
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v0

    .line 219
    .local v0, "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    invoke-virtual {v0, v5}, Lorg/cocos2d/actions/interval/CCSequence;->setTag(I)V

    .line 220
    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v1, v0}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 223
    .end local v0    # "sequence":Lorg/cocos2d/actions/interval/CCSequence;
    :cond_0
    return-void
.end method

.method private cancelPanel()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    invoke-virtual {v0}, Lcom/sns/game/ui/RandomTaskPanel;->getParent()Lorg/cocos2d/nodes/CCNode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 254
    iget v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/sns/game/layer/RandomTaskSystem;->reset()V

    .line 258
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/RandomTaskSystem;->setVisible(Z)V

    .line 264
    :cond_1
    return-void
.end method

.method private freezePanel()V
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/sns/game/layer/RandomTaskSystem;->cancelPanel()V

    .line 230
    :cond_0
    return-void
.end method

.method public static getSelf()Lcom/sns/game/layer/RandomTaskSystem;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/sns/game/layer/RandomTaskSystem;->system:Lcom/sns/game/layer/RandomTaskSystem;

    return-object v0
.end method

.method private setActionNode()V
    .locals 3

    .prologue
    .line 128
    const-string v0, "point.png"

    invoke-static {v0}, Lorg/cocos2d/nodes/CCSprite;->sprite(Ljava/lang/String;)Lorg/cocos2d/nodes/CCSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    .line 129
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->target_:Lorg/cocos2d/layers/CCLayer;

    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/layers/CCLayer;->addChild(Lorg/cocos2d/nodes/CCNode;I)Lorg/cocos2d/nodes/CCNode;

    .line 130
    return-void
.end method

.method public static sharedSystem(Lorg/cocos2d/layers/CCLayer;)Lcom/sns/game/layer/RandomTaskSystem;
    .locals 1
    .param p0, "target"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 37
    sget-object v0, Lcom/sns/game/layer/RandomTaskSystem;->system:Lcom/sns/game/layer/RandomTaskSystem;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/sns/game/layer/RandomTaskSystem;

    invoke-direct {v0}, Lcom/sns/game/layer/RandomTaskSystem;-><init>()V

    sput-object v0, Lcom/sns/game/layer/RandomTaskSystem;->system:Lcom/sns/game/layer/RandomTaskSystem;

    .line 42
    :cond_0
    sget-object v0, Lcom/sns/game/layer/RandomTaskSystem;->system:Lcom/sns/game/layer/RandomTaskSystem;

    invoke-virtual {v0, p0}, Lcom/sns/game/layer/RandomTaskSystem;->setTarget(Lorg/cocos2d/layers/CCLayer;)V

    .line 43
    sget-object v0, Lcom/sns/game/layer/RandomTaskSystem;->system:Lcom/sns/game/layer/RandomTaskSystem;

    invoke-virtual {v0}, Lcom/sns/game/layer/RandomTaskSystem;->createSelf()V

    .line 45
    sget-object v0, Lcom/sns/game/layer/RandomTaskSystem;->system:Lcom/sns/game/layer/RandomTaskSystem;

    return-object v0
.end method

.method private showPanel()V
    .locals 4

    .prologue
    const/16 v3, 0x3e8

    const/4 v2, 0x1

    .line 233
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    if-nez v0, :cond_1

    .line 235
    iget v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->state:I

    if-ne v0, v2, :cond_2

    .line 237
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->target_:Lorg/cocos2d/layers/CCLayer;

    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    invoke-static {v0, v3, v1}, Lcom/sns/game/ui/RandomTaskPanel;->sharedPanel(Lorg/cocos2d/layers/CCLayer;ILcom/sns/game/database/bean/RandomTaskBean;)Lcom/sns/game/ui/RandomTaskPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    .line 243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    invoke-virtual {v0}, Lcom/sns/game/ui/RandomTaskPanel;->show()V

    .line 244
    invoke-virtual {p0, v2}, Lcom/sns/game/layer/RandomTaskSystem;->setVisible(Z)V

    .line 248
    :cond_1
    return-void

    .line 239
    :cond_2
    iget v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->state:I

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->target_:Lorg/cocos2d/layers/CCLayer;

    invoke-static {}, Lcom/sns/game/database/dao/RandomTaskDao;->sharedDao()Lcom/sns/game/database/dao/RandomTaskDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sns/game/database/dao/RandomTaskDao;->randomTask()Lcom/sns/game/database/bean/RandomTaskBean;

    move-result-object v1

    .line 240
    invoke-static {v0, v3, v1}, Lcom/sns/game/ui/RandomTaskPanel;->sharedPanel(Lorg/cocos2d/layers/CCLayer;ILcom/sns/game/database/bean/RandomTaskBean;)Lcom/sns/game/ui/RandomTaskPanel;

    move-result-object v0

    iput-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    goto :goto_0
.end method


# virtual methods
.method public activate()V
    .locals 5

    .prologue
    .line 133
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    .line 136
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lorg/cocos2d/actions/interval/CCDelayTime;->action(F)Lorg/cocos2d/actions/interval/CCDelayTime;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/cocos2d/actions/base/CCFiniteTimeAction;

    const/4 v3, 0x0

    .line 137
    const-string v4, "callBack_selector_activate"

    invoke-static {p0, v4}, Lorg/cocos2d/actions/instant/CCCallFunc;->action(Ljava/lang/Object;Ljava/lang/String;)Lorg/cocos2d/actions/instant/CCCallFunc;

    move-result-object v4

    aput-object v4, v2, v3

    .line 135
    invoke-static {v1, v2}, Lorg/cocos2d/actions/interval/CCSequence;->actions(Lorg/cocos2d/actions/base/CCFiniteTimeAction;[Lorg/cocos2d/actions/base/CCFiniteTimeAction;)Lorg/cocos2d/actions/interval/CCSequence;

    move-result-object v1

    invoke-static {v1}, Lorg/cocos2d/actions/base/CCRepeatForever;->action(Lorg/cocos2d/actions/interval/CCIntervalAction;)Lorg/cocos2d/actions/base/CCRepeatForever;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/cocos2d/nodes/CCNode;->runAction(Lorg/cocos2d/actions/base/CCAction;)Lorg/cocos2d/actions/base/CCAction;

    .line 139
    :cond_0
    return-void
.end method

.method public assignSavaValuesTo(Lcom/sns/game/ui/RandomTaskPanel;)V
    .locals 1
    .param p1, "panel"    # Lcom/sns/game/ui/RandomTaskPanel;

    .prologue
    .line 72
    iget v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->second:I

    invoke-virtual {p1, v0}, Lcom/sns/game/ui/RandomTaskPanel;->setSecond(I)V

    .line 73
    iget v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->compleCount:I

    invoke-virtual {p1, v0}, Lcom/sns/game/ui/RandomTaskPanel;->setCompleCount(I)V

    .line 74
    return-void
.end method

.method public callBack_selector_activate()V
    .locals 4

    .prologue
    .line 150
    :try_start_0
    invoke-static {}, Lcom/sns/game/database/bean/UserState;->sharedState()Lcom/sns/game/database/bean/UserState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sns/game/database/bean/UserState;->getLevel()I

    move-result v1

    .line 151
    .local v1, "userLevel":I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 180
    .end local v1    # "userLevel":I
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v1    # "userLevel":I
    :cond_1
    iget-object v2, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    if-nez v2, :cond_3

    .line 156
    invoke-virtual {p0}, Lcom/sns/game/layer/RandomTaskSystem;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget v2, p0, Lcom/sns/game/layer/RandomTaskSystem;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 161
    invoke-direct {p0}, Lcom/sns/game/layer/RandomTaskSystem;->showPanel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    .end local v1    # "userLevel":I
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "userLevel":I
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/sns/game/layer/RandomTaskSystem;->state:I

    if-nez v2, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/sns/game/layer/RandomTaskSystem;->activatePanel()V

    goto :goto_0

    .line 172
    :cond_3
    invoke-virtual {p0}, Lcom/sns/game/layer/RandomTaskSystem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/sns/game/layer/RandomTaskSystem;->freezePanel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public callBack_selector_activatePanel()V
    .locals 1

    .prologue
    .line 268
    :try_start_0
    invoke-direct {p0}, Lcom/sns/game/layer/RandomTaskSystem;->showPanel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public createSelf()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/sns/game/layer/RandomTaskSystem;->setActionNode()V

    .line 106
    return-void
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->stopAllActions()V

    .line 146
    :cond_0
    return-void
.end method

.method public getPanel()Lcom/sns/game/ui/RandomTaskPanel;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->state:I

    return v0
.end method

.method public declared-synchronized isVisible()Z
    .locals 1

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeSelf()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/sns/game/layer/RandomTaskSystem;->save()V

    .line 112
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    invoke-virtual {v0}, Lorg/cocos2d/nodes/CCNode;->removeSelf()V

    .line 113
    iput-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->actionNode:Lorg/cocos2d/nodes/CCNode;

    .line 114
    iput-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    .line 115
    iput-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->target_:Lorg/cocos2d/layers/CCLayer;

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->visible:Z

    .line 117
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->second:I

    .line 78
    iput v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->compleCount:I

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->bean:Lcom/sns/game/database/bean/RandomTaskBean;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sns/game/layer/RandomTaskSystem;->setState(I)V

    .line 81
    return-void
.end method

.method public save()V
    .locals 2

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    if-eqz v1, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sns/game/layer/RandomTaskSystem;->setState(I)V

    .line 89
    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    invoke-virtual {v1}, Lcom/sns/game/ui/RandomTaskPanel;->getSecond()I

    move-result v1

    iput v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->second:I

    .line 90
    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    invoke-virtual {v1}, Lcom/sns/game/ui/RandomTaskPanel;->getCompleCount()I

    move-result v1

    iput v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->compleCount:I

    .line 91
    iget-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    invoke-virtual {v1}, Lcom/sns/game/ui/RandomTaskPanel;->getBean()Lcom/sns/game/database/bean/RandomTaskBean;

    move-result-object v1

    iput-object v1, p0, Lcom/sns/game/layer/RandomTaskSystem;->bean:Lcom/sns/game/database/bean/RandomTaskBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sns/game/util/CCGameLog;->printStackTrace(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/sns/game/layer/RandomTaskSystem;->state:I

    .line 69
    return-void
.end method

.method public setTarget(Lorg/cocos2d/layers/CCLayer;)V
    .locals 0
    .param p1, "target"    # Lorg/cocos2d/layers/CCLayer;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sns/game/layer/RandomTaskSystem;->target_:Lorg/cocos2d/layers/CCLayer;

    .line 123
    return-void
.end method

.method public declared-synchronized setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sns/game/layer/RandomTaskSystem;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateTaskCompleCount(I)V
    .locals 2
    .param p1, "targetZombieId"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sns/game/layer/RandomTaskSystem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    invoke-virtual {v0, p1}, Lcom/sns/game/ui/RandomTaskPanel;->isEffective(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sns/game/layer/RandomTaskSystem;->panel:Lcom/sns/game/ui/RandomTaskPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sns/game/ui/RandomTaskPanel;->updateCompleCount(I)V

    .line 206
    :cond_0
    return-void
.end method
