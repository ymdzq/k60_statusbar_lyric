.class public final synthetic Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

.field public final synthetic f$2:Landroid/graphics/RectF;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;Landroid/graphics/RectF;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/RectF;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1$$ExternalSyntheticLambda0;->f$2:Landroid/graphics/RectF;

    .line 6
    iget-object v2, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 8
    iget-object v2, v2, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 10
    sget-object v3, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->sIconLoc:Landroid/graphics/RectF;

    .line 12
    instance-of v3, v1, Landroid/view/View;

    .line 14
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_0

    .line 17
    move-object v3, v1

    .line 19
    check-cast v3, Landroid/view/View;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move-object v3, v4

    .line 23
    :goto_0
    if-eqz p0, :cond_1

    .line 24
    sget-object v5, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->sIconLoc:Landroid/graphics/RectF;

    .line 26
    invoke-virtual {v5, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 28
    :cond_1
    if-eqz v3, :cond_2

    .line 31
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 33
    move-result-object p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 43
    move-result-object p0

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move-object p0, v4

    .line 48
    :goto_1
    if-eqz p0, :cond_3

    .line 49
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 51
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    if-eqz v1, :cond_3

    .line 57
    const-string v3, "FloatingIconLayer"

    .line 59
    const-string v4, "getFloatingIconLayer"

    .line 61
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;

    .line 66
    invoke-direct {v4}, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;-><init>()V

    .line 68
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 71
    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 73
    iput-object v5, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mLaunchAppAndBackHomeAnimTargetRef:Ljava/lang/ref/WeakReference;

    .line 76
    const/4 v5, 0x0

    .line 78
    iput-boolean v5, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mIsDrawIcon:Z

    .line 79
    invoke-interface {v1}, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;->getContentDrawable()Landroid/graphics/drawable/Drawable;

    .line 81
    move-result-object v6

    .line 84
    iput-object v6, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-interface {v1}, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    .line 87
    move-result-object v6

    .line 90
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 91
    move-result v6

    .line 94
    invoke-interface {v1}, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;->getIconImageView()Landroid/view/View;

    .line 95
    move-result-object v7

    .line 98
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 99
    move-result v7

    .line 102
    iget-object v8, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconRectF:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {v8, v5, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 105
    iget-object v6, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mValidIconRectF:Landroid/graphics/RectF;

    .line 108
    invoke-virtual {v6, v8}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 110
    invoke-interface {v1}, Lcom/android/systemui/statusbar/animation/LaunchAppAndBackHomeAnimTarget;->getIconTransparentEdge()I

    .line 113
    move-result v1

    .line 116
    iput v1, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mIconTransparentEdge:I

    .line 117
    int-to-float v1, v1

    .line 119
    invoke-virtual {v6, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 120
    const/4 v1, 0x0

    .line 123
    invoke-virtual {v6, v1, v1}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 124
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    .line 127
    move-result v1

    .line 130
    float-to-int v1, v1

    .line 131
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    .line 132
    move-result v6

    .line 135
    float-to-int v6, v6

    .line 136
    new-instance v7, Landroid/view/SurfaceControl$Builder;

    .line 137
    new-instance v9, Landroid/view/SurfaceSession;

    .line 139
    invoke-direct {v9}, Landroid/view/SurfaceSession;-><init>()V

    .line 141
    invoke-direct {v7, v9}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 144
    invoke-virtual {v7, v1, v6}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    .line 147
    move-result-object v1

    .line 150
    const-string v6, "Floating Icon"

    .line 151
    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 153
    move-result-object v1

    .line 156
    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 157
    move-result-object p0

    .line 160
    const/4 v1, 0x1

    .line 161
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    .line 162
    move-result-object p0

    .line 165
    invoke-virtual {p0, v5}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    .line 166
    move-result-object p0

    .line 169
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 170
    move-result-object p0

    .line 173
    iput-object p0, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 174
    new-instance p0, Landroid/view/Surface;

    .line 176
    iget-object v1, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurfaceControl:Landroid/view/SurfaceControl;

    .line 178
    invoke-direct {p0, v1}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    .line 180
    iput-object p0, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mFloatingIconSurface:Landroid/view/Surface;

    .line 183
    iget p0, v4, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->mIconTransparentEdge:I

    .line 185
    neg-int p0, p0

    .line 187
    invoke-virtual {v8, p0, p0}, Landroid/graphics/Rect;->offset(II)V

    .line 188
    const-string p0, "init finish"

    .line 191
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    iput-object v4, v2, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpenFloatingIconLayer:Lcom/android/systemui/statusbar/animation/FloatingIconLayer;

    .line 196
    iget-object p0, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 200
    iget-object v1, v1, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mOpenFloatingIconLayer:Lcom/android/systemui/statusbar/animation/FloatingIconLayer;

    .line 202
    if-eqz v1, :cond_5

    .line 204
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->mIsOpenAnimRunning:Z

    .line 206
    if-eqz p0, :cond_4

    .line 208
    new-instance p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda0;

    .line 210
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/animation/FloatingIconLayer;)V

    .line 212
    sget-object v0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 215
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/animation/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 217
    goto :goto_2

    .line 220
    :cond_4
    new-instance p0, Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda1;

    .line 221
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/animation/FloatingIconLayer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/animation/FloatingIconLayer;)V

    .line 223
    sget-object v1, Lcom/android/systemui/statusbar/animation/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/android/systemui/statusbar/animation/LooperExecutor;

    .line 226
    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/animation/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 228
    iget-object p0, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner$1;->this$1:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;

    .line 231
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator$StatusBarAnimationRunner;->this$0:Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchAnimator;->mCamouflageImageWindow:Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;

    .line 235
    if-eqz p0, :cond_5

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/animation/CamouflageImageWindow;->hideView()V

    .line 239
    :cond_5
    :goto_2
    return-void
    .line 242
.end method
