.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

.field final synthetic val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

.field final synthetic val$taskHeight:F

.field final synthetic val$taskWidth:F


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 4
    iput p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$taskWidth:F

    .line 6
    iput p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$taskHeight:F

    .line 8
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->onComplete(Ljava/lang/Object;)V

    .line 2
    return-void
    .line 5
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$fgetmSoScSplitScreenController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 4
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->swapSplitTasks(Landroid/window/WindowContainerTransaction;Z)V

    .line 10
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 13
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$fgetisAddedCover(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 21
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->releaseCoverLayer()V

    .line 27
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 30
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$fputisAddedCover(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)V

    .line 32
    :cond_0
    return-void
    .line 35
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 8

    .line 1
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 7
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$mgetOperateTaskLeash(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/view/SurfaceControl;

    .line 9
    move-result-object p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 15
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$mgetOperateTaskLeash(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/view/SurfaceControl;

    .line 17
    move-result-object p2

    .line 20
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 21
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 27
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosX()F

    .line 29
    move-result p2

    .line 32
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$taskWidth:F

    .line 33
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 35
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 37
    move-result v1

    .line 40
    mul-float/2addr v1, v0

    .line 41
    const/high16 v0, 0x40000000    # 2.0f

    .line 42
    div-float/2addr v1, v0

    .line 44
    sub-float v2, p2, v1

    .line 45
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 47
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getPosY()F

    .line 49
    move-result p2

    .line 52
    iget v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$taskHeight:F

    .line 53
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 55
    invoke-virtual {v3}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 57
    move-result v3

    .line 60
    mul-float/2addr v3, v1

    .line 61
    div-float/2addr v3, v0

    .line 62
    sub-float v3, p2, v3

    .line 63
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 65
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$mgetOperateTaskLeash(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/view/SurfaceControl;

    .line 67
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 71
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 74
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$mgetOperateTaskLeash(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/view/SurfaceControl;

    .line 76
    move-result-object p2

    .line 79
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 80
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 82
    move-result v0

    .line 85
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 86
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 88
    move-result v1

    .line 91
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 92
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 95
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$fgetisAddedCover(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Z

    .line 97
    move-result p2

    .line 100
    if-eqz p2, :cond_0

    .line 101
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 103
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 105
    move-result-object v0

    .line 108
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 109
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 111
    move-result v4

    .line 114
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 115
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 117
    move-result v5

    .line 120
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 121
    invoke-virtual {p2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCoverLayerAlpha()F

    .line 123
    move-result v6

    .line 126
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 127
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$fgetmTaskBounds(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/graphics/Rect;

    .line 129
    move-result-object v7

    .line 132
    move-object v1, p1

    .line 133
    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCoverLayerTransaction(Landroid/view/SurfaceControl$Transaction;FFFFFLandroid/graphics/Rect;)V

    .line 134
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 137
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$mgetOperateTaskLeash(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Landroid/view/SurfaceControl;

    .line 139
    move-result-object p2

    .line 142
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 143
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 145
    move-result v0

    .line 148
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 149
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 151
    move-result v1

    .line 154
    div-float/2addr v0, v1

    .line 155
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 156
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 158
    move-result v1

    .line 161
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 162
    invoke-virtual {v2}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 164
    move-result v2

    .line 167
    div-float/2addr v1, v2

    .line 168
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 169
    iget-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;

    .line 172
    invoke-static {p2}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;->-$$Nest$fgetmMiuiCoverLayerController(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler;)Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;

    .line 174
    move-result-object p2

    .line 177
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 178
    invoke-virtual {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 180
    move-result v0

    .line 183
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 184
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleX()F

    .line 186
    move-result v1

    .line 189
    div-float/2addr v0, v1

    .line 190
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 191
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getCornerRadius()F

    .line 193
    move-result v1

    .line 196
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiMultiWinGestureHandler$2;->val$miuiMultiWinAnimInfo:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;

    .line 197
    invoke-virtual {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinAnimInfo;->getScaleY()F

    .line 199
    move-result p0

    .line 202
    div-float/2addr v1, p0

    .line 203
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdrag/MiuiCoverLayerController;->setCornerRadius(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 207
    return-void
    .line 210
.end method
