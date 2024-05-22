.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field final synthetic val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->removeRunningAnimationType(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "applyResizeAnimation up onCancel: toTag: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, " miuiFreeformModeTaskInfo: "

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 23
    const-string p1, "MiuiFreeformAnimation"

    .line 25
    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Ljava/lang/String;)V

    .line 27
    return-void
    .line 30
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    const/4 v0, 0x3

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->removeRunningAnimationType(I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "applyResizeAnimation up onComplete: miuiFreeformModeTaskInfo: "

    .line 10
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " animationType:"

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 25
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 27
    move-result v1

    .line 30
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 37
    const-string v1, "MiuiFreeformAnimation"

    .line 38
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 43
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 45
    move-result p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 51
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 56
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 58
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 62
    move-result v0

    .line 65
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 66
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 68
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 72
    move-result v1

    .line 75
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 76
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 78
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 82
    move-result v2

    .line 85
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 86
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 88
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 92
    move-result v3

    .line 95
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 96
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 98
    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 102
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 104
    move-result-object v5

    .line 107
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 108
    invoke-virtual {v4, p1, v5, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 110
    move-result-object v4

    .line 113
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 114
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 116
    move-result-object v5

    .line 119
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 120
    invoke-virtual {v4, p1, v5, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 122
    move-result-object v3

    .line 125
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 126
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 128
    move-result-object v4

    .line 131
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 132
    invoke-virtual {v3, p1, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 134
    new-instance v3, Landroid/window/WindowContainerTransaction;

    .line 137
    invoke-direct {v3}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 139
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 142
    invoke-virtual {v4, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setScale(F)V

    .line 144
    new-instance v4, Landroid/graphics/Rect;

    .line 147
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 149
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 151
    move-result-object v5

    .line 154
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 155
    float-to-int v0, v0

    .line 158
    float-to-int v1, v1

    .line 159
    invoke-virtual {v4, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 160
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 163
    invoke-virtual {v0, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 165
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 168
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 170
    move-result-object v0

    .line 173
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 174
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 176
    invoke-virtual {v3, v0, v4}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 178
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 181
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 183
    move-result-object v0

    .line 186
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 187
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 189
    invoke-virtual {v3, v0, p1}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 191
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 194
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 196
    invoke-virtual {p1, v2}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setMiuiFreeformScale(F)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 199
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 202
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 204
    move-result v0

    .line 207
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 208
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getTmpDownModeIsMini()Z

    .line 210
    move-result v1

    .line 213
    if-eq v0, v1, :cond_2

    .line 214
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 216
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 218
    move-result v0

    .line 221
    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x4

    .line 224
    goto :goto_0

    .line 225
    :cond_0
    const/16 v0, 0x10

    .line 226
    :goto_0
    invoke-virtual {p1, v0}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->setFreeformChange(I)Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 228
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 231
    invoke-static {v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 233
    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 237
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Landroid/content/Context;

    .line 239
    move-result-object v1

    .line 242
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 243
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 245
    invoke-static {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeTaskRepository(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;

    .line 247
    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskRepository;->getfreeformTasksInZOrder()Ljava/util/ArrayList;

    .line 251
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 255
    move-result v1

    .line 258
    iput v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->freeformAppCount:I

    .line 259
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 261
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 263
    move-result v1

    .line 266
    if-eqz v1, :cond_1

    .line 267
    const-string/jumbo v1, "\u8fdb\u5165\u8ff7\u4f60\u7a97"

    .line 269
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 272
    const-string/jumbo v1, "\u5c0f\u7a97"

    .line 274
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 277
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 279
    move-result-object v1

    .line 282
    invoke-virtual {v1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 283
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 286
    move-result-object v1

    .line 289
    invoke-virtual {v1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackMiniEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 290
    goto :goto_1

    .line 293
    :cond_1
    const-string/jumbo v1, "\u62d6\u62fd\u8fdb\u5165\u5c0f\u7a97"

    .line 294
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 297
    const-string/jumbo v1, "\u8ff7\u4f60\u7a97"

    .line 299
    iput-object v1, v0, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->enterWay:Ljava/lang/String;

    .line 302
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 304
    move-result-object v1

    .line 307
    invoke-virtual {v1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackMiniExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 308
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 311
    move-result-object v1

    .line 314
    invoke-virtual {v1, v0}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackFreeFormEnterEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 315
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 318
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 320
    move-result-object v0

    .line 323
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 324
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 326
    invoke-virtual {v3, v0, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 328
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 331
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 333
    move-result-object p1

    .line 336
    invoke-virtual {p1, v3}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 337
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 340
    new-instance v0, Landroid/graphics/Rect;

    .line 342
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 344
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingBounds(Landroid/graphics/Rect;)V

    .line 347
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 350
    const/high16 v0, -0x40800000    # -1.0f

    .line 352
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleX(F)V

    .line 354
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 357
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleY(F)V

    .line 359
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 362
    const/4 v0, 0x0

    .line 364
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 365
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 368
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->isMiniState()Z

    .line 370
    move-result p1

    .line 373
    if-nez p1, :cond_3

    .line 374
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 376
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmWindowDecorationViewModel(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;

    .line 378
    move-result-object p1

    .line 381
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 382
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 384
    move-result-object p0

    .line 387
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 388
    iget p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 390
    invoke-interface {p1, p0, v2}, Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;->onMiuiFreeformScaleChanged(IF)V

    .line 392
    :cond_3
    return-void
    .line 395
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 8
    move-result p1

    .line 11
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 12
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 18
    move-result p2

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 22
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 28
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 32
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 38
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 42
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 44
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getRadius()F

    .line 48
    move-result v2

    .line 51
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 52
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 54
    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 58
    new-instance v5, Landroid/graphics/Rect;

    .line 60
    float-to-int v6, p1

    .line 62
    float-to-int v7, p2

    .line 63
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 64
    move-result v8

    .line 67
    int-to-float v8, v8

    .line 68
    add-float/2addr v8, p1

    .line 69
    float-to-int v8, v8

    .line 70
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 71
    move-result v3

    .line 74
    int-to-float v3, v3

    .line 75
    add-float/2addr v3, p2

    .line 76
    float-to-int v3, v3

    .line 77
    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 78
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingBounds(Landroid/graphics/Rect;)V

    .line 81
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 84
    invoke-virtual {v3, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleX(F)V

    .line 86
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 89
    invoke-virtual {v3, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleY(F)V

    .line 91
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 94
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 96
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 99
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 101
    move-result-object v4

    .line 104
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 105
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 107
    move-result-object v5

    .line 110
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 111
    invoke-virtual {v4, v3, v5, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 113
    move-result-object p1

    .line 116
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 117
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 119
    move-result-object p2

    .line 122
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 123
    invoke-virtual {p1, v3, p2, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 125
    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 129
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 131
    move-result-object p2

    .line 134
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 135
    invoke-virtual {p1, v3, p2, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 137
    move-result-object p1

    .line 140
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$12;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 141
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 143
    move-result-object p0

    .line 146
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 147
    invoke-virtual {p1, v3, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 149
    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 152
    return-void
    .line 155
.end method
