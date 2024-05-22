.class public final Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;
.super Landroid/view/animation/Animation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public isFloatWindow:Z

.field public isVisible:Z

.field public mClipRect:Landroid/graphics/Rect;

.field public mCornerRadius:F

.field public mCurrentAlpha:F

.field public mDimLayer:Landroid/view/SurfaceControl;

.field public final mFromAlpha:F

.field public final mHost:Landroid/view/SurfaceControl;

.field public final mToAlpha:F


# direct methods
.method public constructor <init>(FFLandroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCurrentAlpha:F

    .line 5
    iput v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCornerRadius:F

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isFloatWindow:Z

    .line 7
    iput p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mFromAlpha:F

    .line 8
    iput p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mToAlpha:F

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 10
    iput-object p3, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(FFLandroid/graphics/Rect;Landroid/view/SurfaceControl;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;-><init>(FFLandroid/graphics/Rect;Landroid/view/SurfaceControl;)V

    .line 2
    iput p5, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCornerRadius:F

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mFromAlpha:F

    .line 2
    iget v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mToAlpha:F

    .line 4
    invoke-static {v0, p2, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 6
    move-result p1

    .line 9
    iput p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCurrentAlpha:F

    .line 10
    return-void
    .line 12
.end method

.method public final dim(Landroid/view/SurfaceControl$Transaction;IF)V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 3
    if-nez v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isFloatWindow:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->makeDimLayerForFloatWindow()V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->makeDimLayer()V

    .line 15
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 18
    if-nez v0, :cond_2

    .line 20
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_2
    iget-object v1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 24
    if-eqz v1, :cond_3

    .line 26
    invoke-virtual {p1, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 28
    goto :goto_1

    .line 31
    :cond_3
    const p2, 0x7fffffff

    .line 32
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 35
    :goto_1
    iget p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCornerRadius:F

    .line 38
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 40
    move-result p2

    .line 43
    float-to-double v0, p2

    .line 44
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 45
    cmpl-double p2, v0, v2

    .line 50
    if-lez p2, :cond_4

    .line 52
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 54
    iget v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCornerRadius:F

    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 58
    :cond_4
    const/4 p2, 0x1

    .line 61
    iput-boolean p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isVisible:Z

    .line 62
    iput p3, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCurrentAlpha:F

    .line 64
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 66
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 68
    iget-object p2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 71
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 73
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    throw p1
    .line 80
.end method

.method public final makeDimLayer()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 6
    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 13
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 17
    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "DefaultTransition Dim Layer for - "

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 28
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 45
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 49
    goto :goto_0

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 53
    :goto_0
    return-void
    .line 55
.end method

.method public final makeDimLayerForFloatWindow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 6
    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 8
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 11
    move-result-object v0

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "FloatWindow Transition Dim Layer for - "

    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 35
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 39
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 47
    :goto_0
    return-void
    .line 49
.end method

.method public final stopDim(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 20
    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 24
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isVisible:Z

    .line 27
    iput-object p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mClipRect:Landroid/graphics/Rect;

    .line 29
    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->mCornerRadius:F

    .line 32
    iput-boolean v0, p0, Lcom/android/wm/shell/common/transition/DefaultTransitionDimmer;->isFloatWindow:Z

    .line 34
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
    .line 40
.end method
