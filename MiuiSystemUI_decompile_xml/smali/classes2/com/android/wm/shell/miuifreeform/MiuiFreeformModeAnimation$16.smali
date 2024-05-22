.class Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

.field final synthetic val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

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
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->removeRunningAnimationType(I)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, " applyTranslateAnimation up onCancel: toTag: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string p1, " miuiFreeformModeTaskInfo: "

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

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
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->removeRunningAnimationType(I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "applyTranslateAnimation up onComplete: miuiFreeformModeTaskInfo: "

    .line 10
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " animationType:"

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

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
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 43
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getAnimationType()I

    .line 45
    move-result p1

    .line 48
    if-ne p1, v0, :cond_1

    .line 49
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 51
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 53
    move-result-object p1

    .line 56
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 57
    if-gez p1, :cond_0

    .line 59
    new-instance p1, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 61
    invoke-direct {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;-><init>()V

    .line 63
    new-instance v0, Landroid/window/WindowContainerTransaction;

    .line 66
    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 68
    invoke-virtual {p1}, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;->miniFreeformToFullscreenByBottomCaption()Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;

    .line 71
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 74
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 76
    move-result-object v1

    .line 79
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 80
    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 82
    invoke-virtual {v0, v1, p1}, Landroid/window/WindowContainerTransaction;->setMiuiFreeformInfoChange(Landroid/window/WindowContainerToken;Lmiui/app/MiuiFreeFormManager$MiuiFreeFormInfoChange;)Landroid/window/WindowContainerTransaction;

    .line 84
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 87
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 89
    move-result-object p1

    .line 92
    invoke-virtual {p1, v0}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 93
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 96
    invoke-static {p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->loadFrom(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;

    .line 98
    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 102
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmContext(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Landroid/content/Context;

    .line 104
    move-result-object v0

    .line 107
    iput-object v0, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->context:Landroid/content/Context;

    .line 108
    const-string/jumbo v0, "\u5176\u4ed6"

    .line 110
    iput-object v0, p1, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;->quitWay:Ljava/lang/String;

    .line 113
    invoke-static {}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->getInstance()Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;

    .line 115
    move-result-object v0

    .line 118
    invoke-virtual {v0, p1}, Lsrc/com/miui/analytics/MiuiFreeFormTrackStub;->trackMiniExitEvent(Lsrc/com/miui/analytics/MiuiFreeFormTrackStub$FreeFormTrackObj;)V

    .line 119
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 122
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 124
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->startExitFreeformShellTransition(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;)V

    .line 126
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 129
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 131
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 134
    invoke-static {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 136
    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 140
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 142
    move-result-object v1

    .line 145
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 146
    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setAlpha(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 149
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 152
    goto/16 :goto_0

    .line 155
    :cond_0
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 157
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 159
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 162
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 164
    move-result-object v0

    .line 167
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 168
    move-result v0

    .line 171
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 172
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 174
    move-result-object v1

    .line 177
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 178
    move-result v1

    .line 181
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 182
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 184
    move-result-object v2

    .line 187
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 188
    move-result v2

    .line 191
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 192
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 194
    move-result-object v3

    .line 197
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 198
    move-result v3

    .line 201
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 202
    invoke-static {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 204
    move-result-object v4

    .line 207
    iget-object v5, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 208
    invoke-virtual {v5}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 210
    move-result-object v5

    .line 213
    iget-object v5, v5, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 214
    invoke-virtual {v4, p1, v5, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 216
    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 220
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 222
    move-result-object v1

    .line 225
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 226
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 228
    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 232
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 234
    move-result-object v1

    .line 237
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 238
    invoke-virtual {v0, p1, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 240
    new-instance v0, Landroid/graphics/Rect;

    .line 243
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 245
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 247
    move-result-object v1

    .line 250
    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 251
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 254
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 256
    move-result-object v1

    .line 259
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 260
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 262
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getDestinationBounds()Landroid/graphics/Rect;

    .line 264
    move-result-object v2

    .line 267
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 268
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 270
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 273
    invoke-virtual {v1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setBounds(Landroid/graphics/Rect;)V

    .line 275
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 278
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 280
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 283
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 285
    move-result-object v2

    .line 288
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 289
    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 291
    invoke-virtual {v1, v2, v0}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    .line 293
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 296
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 298
    move-result-object v0

    .line 301
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 302
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 304
    invoke-virtual {v1, v0, p1}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    .line 306
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 309
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmRootTaskDisplayAreaOrganizer(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 311
    move-result-object p1

    .line 314
    invoke-virtual {p1, v1}, Landroid/window/DisplayAreaOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 315
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 318
    new-instance v0, Landroid/graphics/Rect;

    .line 320
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 322
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingBounds(Landroid/graphics/Rect;)V

    .line 325
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 328
    const/high16 v0, -0x40800000    # -1.0f

    .line 330
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleX(F)V

    .line 332
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 335
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleY(F)V

    .line 337
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 340
    const/4 p1, 0x0

    .line 342
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimationType(I)V

    .line 343
    :cond_1
    return-void
    .line 346
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 2
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 8
    move-result p1

    .line 11
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 12
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 18
    move-result p2

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 22
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 28
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 32
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getFolmeControl()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 38
    move-result v1

    .line 41
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 42
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 44
    move-result-object v2

    .line 47
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 48
    new-instance v4, Landroid/graphics/Rect;

    .line 50
    float-to-int v5, p1

    .line 52
    float-to-int v6, p2

    .line 53
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 54
    move-result v7

    .line 57
    int-to-float v7, v7

    .line 58
    add-float/2addr v7, p1

    .line 59
    float-to-int v7, v7

    .line 60
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result v2

    .line 64
    int-to-float v2, v2

    .line 65
    add-float/2addr v2, p2

    .line 66
    float-to-int v2, v2

    .line 67
    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 68
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingBounds(Landroid/graphics/Rect;)V

    .line 71
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 74
    invoke-virtual {v2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleX(F)V

    .line 76
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 79
    invoke-virtual {v2, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleY(F)V

    .line 81
    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    .line 84
    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 86
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->this$0:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;

    .line 89
    invoke-static {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;->-$$Nest$fgetmMiuiFreeformModeSurfaceTransactionHelper(Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 91
    move-result-object v3

    .line 94
    iget-object v4, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 95
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 97
    move-result-object v4

    .line 100
    iget-object v4, v4, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 101
    invoke-virtual {v3, v2, v4, p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setPostion(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 103
    move-result-object p1

    .line 106
    iget-object p2, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 107
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 109
    move-result-object p2

    .line 112
    iget-object p2, p2, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 113
    invoke-virtual {p1, v2, p2, v0, v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->setScaleXY(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 115
    move-result-object p1

    .line 118
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeAnimation$16;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 119
    invoke-virtual {p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getState()Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;

    .line 121
    move-result-object p0

    .line 124
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$State;->mLeash:Landroid/view/SurfaceControl;

    .line 125
    invoke-virtual {p1, v2, p0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;->defAnimationBufferCache(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeSurfaceTransactionHelper;

    .line 127
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 130
    return-void
    .line 133
.end method
