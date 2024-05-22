.class public Lcom/android/wm/shell/common/splitmode/SplitDimmer;
.super Landroid/view/animation/Animation;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SplitDimmer"


# instance fields
.field alpha:F

.field private isVisible:Z

.field private mClipRect:Landroid/graphics/Rect;

.field mDimLayer:Landroid/view/SurfaceControl;

.field private mFromAlpha:F

.field private mHost:Landroid/view/SurfaceControl;

.field private mToAlpha:F


# direct methods
.method public constructor <init>(FFLandroid/graphics/Rect;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p4}, Lcom/android/wm/shell/common/splitmode/SplitDimmer;-><init>(FFLandroid/view/SurfaceControl;)V

    .line 2
    iput-object p3, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mClipRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(FFLandroid/view/SurfaceControl;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    const v0, 0x3dcccccd    # 0.1f

    .line 4
    iput v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->alpha:F

    .line 5
    iput p1, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mFromAlpha:F

    .line 6
    iput p2, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mToAlpha:F

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mHost:Landroid/view/SurfaceControl;

    return-void
.end method

.method private dim(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IF)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->makeDimLayer()Landroid/view/SurfaceControl;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 13
    if-nez v0, :cond_1

    .line 15
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_1
    if-eqz p2, :cond_2

    .line 19
    invoke-virtual {p1, v0, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 21
    goto :goto_0

    .line 24
    :cond_2
    const p2, 0x7fffffff

    .line 25
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 28
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mClipRect:Landroid/graphics/Rect;

    .line 31
    if-eqz p2, :cond_3

    .line 33
    iget-object p3, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 35
    iget v0, p2, Landroid/graphics/Rect;->right:I

    .line 37
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 39
    sub-int/2addr v0, v1

    .line 41
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 42
    iget p2, p2, Landroid/graphics/Rect;->top:I

    .line 44
    sub-int/2addr v1, p2

    .line 46
    invoke-virtual {p1, p3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 47
    iget-object p2, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 50
    iget-object p3, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mClipRect:Landroid/graphics/Rect;

    .line 52
    iget v0, p3, Landroid/graphics/Rect;->left:I

    .line 54
    int-to-float v0, v0

    .line 56
    iget p3, p3, Landroid/graphics/Rect;->top:I

    .line 57
    int-to-float p3, p3

    .line 59
    invoke-virtual {p1, p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 60
    :cond_3
    iget-object p2, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 63
    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 65
    iput p4, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->alpha:F

    .line 68
    iget-object p2, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 72
    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->isVisible:Z

    .line 76
    monitor-exit p0

    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    throw p1
    .line 82
.end method

.method private makeDimLayer()Landroid/view/SurfaceControl;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    .line 2
    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 7
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    const-string v2, "Split Dim Layer for - "

    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mHost:Landroid/view/SurfaceControl;

    .line 24
    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 41
    move-result-object p0

    .line 44
    return-object p0
    .line 45
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mFromAlpha:F

    .line 2
    iget v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mToAlpha:F

    .line 4
    invoke-static {v0, p2, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 6
    move-result p1

    .line 9
    iput p1, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->alpha:F

    .line 10
    return-void
    .line 12
.end method

.method public dimAbove(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mFromAlpha:F

    .line 3
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->dim(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;IF)V

    .line 5
    return-void
    .line 8
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->isVisible:Z

    .line 3
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    throw v0
    .line 9
.end method

.method public setAlpha(Landroid/view/SurfaceControl$Transaction;F)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 3
    if-nez v0, :cond_0

    .line 5
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->isVisible:Z

    .line 9
    if-nez v1, :cond_1

    .line 11
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_1
    invoke-virtual {p1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 15
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p1
    .line 22
.end method

.method public stepTransitionDim(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->alpha:F

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->setAlpha(Landroid/view/SurfaceControl$Transaction;F)V

    .line 4
    return-void
    .line 7
.end method

.method public stopDim(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->isVisible:Z

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 18
    move-result-object p1

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 24
    move-result-object p1

    .line 27
    const/4 v0, 0x1

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->apply(Z)V

    .line 29
    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mDimLayer:Landroid/view/SurfaceControl;

    .line 33
    iput-object p1, p0, Lcom/android/wm/shell/common/splitmode/SplitDimmer;->mClipRect:Landroid/graphics/Rect;

    .line 35
    :cond_0
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
    .line 41
.end method
