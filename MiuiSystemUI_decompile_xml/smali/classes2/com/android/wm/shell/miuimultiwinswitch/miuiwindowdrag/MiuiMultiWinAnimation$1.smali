.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

.field final synthetic val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

.field final synthetic val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 6
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 2
    iget-boolean p2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCanceled:Z

    .line 4
    if-nez p2, :cond_1

    .line 6
    iget-boolean p2, p1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->mCancelMoveAnim:Z

    .line 8
    if-eqz p2, :cond_0

    .line 10
    goto/16 :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 18
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 24
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/SurfaceControl;->isValid()Z

    .line 34
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 40
    invoke-virtual {p1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->getBounds()Landroid/graphics/Rect;

    .line 42
    move-result-object p1

    .line 45
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    .line 48
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 50
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 52
    move-result v1

    .line 55
    float-to-int v1, v1

    .line 56
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 57
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 59
    move-result v2

    .line 62
    float-to-int v2, v2

    .line 63
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 64
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 66
    move-result v3

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 70
    move-result v4

    .line 73
    int-to-float v4, v4

    .line 74
    add-float/2addr v3, v4

    .line 75
    float-to-int v3, v3

    .line 76
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 77
    invoke-virtual {v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 79
    move-result v4

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 83
    move-result p1

    .line 86
    int-to-float p1, p1

    .line 87
    add-float/2addr v4, p1

    .line 88
    float-to-int p1, v4

    .line 89
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    invoke-virtual {p2, v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingBounds(Landroid/graphics/Rect;)V

    .line 93
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 96
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 98
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 100
    move-result p2

    .line 103
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleX(F)V

    .line 104
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$miuiFreeformModeTaskInfo:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;

    .line 107
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 109
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 111
    move-result p2

    .line 114
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo;->setAnimatingscaleY(F)V

    .line 115
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 118
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 120
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 122
    move-result-object p2

    .line 125
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->getShapeContentAnimInfo()Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;

    .line 126
    move-result-object p2

    .line 129
    invoke-virtual {p1, p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->setValueToTypeAnimInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/TypeAnimInfo;)V

    .line 130
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 133
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 135
    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->drawShapeCoverContent()V

    .line 139
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 142
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/common/TransactionPool;

    .line 144
    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    .line 148
    move-result-object p1

    .line 151
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 152
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 154
    move-result-object p2

    .line 157
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 158
    move-result-object p2

    .line 161
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 162
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 164
    move-result v0

    .line 167
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 168
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 170
    move-result v1

    .line 173
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 174
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 177
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 179
    move-result-object p2

    .line 182
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 183
    move-result-object p2

    .line 186
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 187
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 189
    move-result v0

    .line 192
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 193
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 195
    move-result v1

    .line 198
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 199
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 202
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 204
    move-result-object p2

    .line 207
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 208
    move-result-object p2

    .line 211
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 212
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getLeashAlpha()F

    .line 214
    move-result v0

    .line 217
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 218
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 221
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCoverLayerAlpha()F

    .line 223
    move-result v6

    .line 226
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 227
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 229
    move-result-object v0

    .line 232
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 233
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosX()F

    .line 235
    move-result v2

    .line 238
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 239
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmePosY()F

    .line 241
    move-result v3

    .line 244
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 245
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 247
    move-result v4

    .line 250
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 251
    invoke-virtual {p2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 253
    move-result v5

    .line 256
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 257
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmTaskBounds(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Landroid/graphics/Rect;

    .line 259
    move-result-object v7

    .line 262
    move-object v1, p1

    .line 263
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 264
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 267
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmDragTaskInfo(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;

    .line 269
    move-result-object p2

    .line 272
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/DragTaskInfo;->getLeash()Landroid/view/SurfaceControl;

    .line 273
    move-result-object p2

    .line 276
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 277
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 279
    move-result v0

    .line 282
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 283
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 285
    move-result v1

    .line 288
    div-float/2addr v0, v1

    .line 289
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 290
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 292
    move-result v1

    .line 295
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 296
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 298
    move-result v2

    .line 301
    div-float/2addr v1, v2

    .line 302
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 303
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 306
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 308
    move-result-object p2

    .line 311
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 312
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 314
    move-result v0

    .line 317
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 318
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleX()F

    .line 320
    move-result v1

    .line 323
    div-float/2addr v0, v1

    .line 324
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 325
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getCornerRadius()F

    .line 327
    move-result v1

    .line 330
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->val$folmeControl:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;

    .line 331
    invoke-virtual {v2}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeTaskInfo$FolmeControl;->getFolmeScaleY()F

    .line 333
    move-result v2

    .line 336
    div-float/2addr v1, v2

    .line 337
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 338
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 341
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;

    .line 344
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;->-$$Nest$fgetmTransactionPool(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinAnimation;)Lcom/android/wm/shell/common/TransactionPool;

    .line 346
    move-result-object p0

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TransactionPool;->release(Landroid/view/SurfaceControl$Transaction;)V

    .line 350
    :cond_1
    :goto_0
    return-void
    .line 353
.end method
