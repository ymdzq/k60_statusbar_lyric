.class public final Lcom/android/wm/shell/back/BackAnimationBackground;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBackgroundIsDark:Z

.field public mBackgroundSurface:Landroid/view/SurfaceControl;

.field public mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

.field public mIsRequestingStatusBarAppearance:Z

.field public final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public mStartBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final ensureBackground(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Lcom/android/internal/graphics/ColorUtils;->calculateLuminance(I)D

    .line 7
    move-result-wide v0

    .line 10
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 11
    cmpg-double v0, v0, v2

    .line 13
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-gez v0, :cond_1

    .line 17
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v2

    .line 21
    :goto_0
    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundIsDark:Z

    .line 22
    const/4 v0, 0x3

    .line 24
    new-array v0, v0, [F

    .line 25
    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    .line 27
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    const/high16 v4, 0x437f0000    # 255.0f

    .line 32
    div-float/2addr v3, v4

    .line 34
    aput v3, v0, v2

    .line 35
    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    .line 37
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    div-float/2addr v3, v4

    .line 42
    aput v3, v0, v1

    .line 43
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 45
    move-result p2

    .line 48
    int-to-float p2, p2

    .line 49
    div-float/2addr p2, v4

    .line 50
    const/4 v1, 0x2

    .line 51
    aput p2, v0, v1

    .line 52
    new-instance p2, Landroid/view/SurfaceControl$Builder;

    .line 54
    invoke-direct {p2}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 56
    const-string v1, "back-animation-background"

    .line 59
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 61
    move-result-object p2

    .line 64
    const-string v1, "BackAnimationBackground"

    .line 65
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 67
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    .line 71
    move-result-object p2

    .line 74
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    .line 75
    invoke-virtual {v1, v2, p2}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->attachToDisplayArea(ILandroid/view/SurfaceControl$Builder;)V

    .line 77
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 80
    move-result-object p2

    .line 83
    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 84
    invoke-virtual {p3, p2, v0}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 86
    move-result-object p2

    .line 89
    iget-object p3, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 90
    const/4 v0, -0x1

    .line 92
    invoke-virtual {p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 93
    move-result-object p2

    .line 96
    iget-object p3, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 97
    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 99
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    .line 102
    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    .line 104
    return-void
    .line 106
.end method

.method public final onBackProgressed(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    .line 2
    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_1

    .line 14
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    .line 15
    cmpl-float p1, p1, v0

    .line 18
    const/4 v0, 0x0

    .line 20
    if-lez p1, :cond_1

    .line 21
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move p1, v0

    .line 25
    :goto_0
    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    .line 26
    if-ne p1, v1, :cond_2

    .line 28
    return-void

    .line 30
    :cond_2
    iput-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    .line 31
    if-eqz p1, :cond_4

    .line 33
    new-instance p1, Lcom/android/internal/view/AppearanceRegion;

    .line 35
    iget-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundIsDark:Z

    .line 37
    if-nez v1, :cond_3

    .line 39
    const/16 v0, 0x8

    .line 41
    :cond_3
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mStartBounds:Landroid/graphics/Rect;

    .line 43
    invoke-direct {p1, v0, v1}, Lcom/android/internal/view/AppearanceRegion;-><init>(ILandroid/graphics/Rect;)V

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    .line 48
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda4;

    .line 55
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Lcom/android/internal/view/AppearanceRegion;)V

    .line 57
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 60
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    goto :goto_1

    .line 65
    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;

    .line 66
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    new-instance p1, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda4;

    .line 73
    const/4 v0, 0x0

    .line 75
    invoke-direct {p1, p0, v0}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;Lcom/android/internal/view/AppearanceRegion;)V

    .line 76
    iget-object p0, p0, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 79
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    :cond_5
    :goto_1
    return-void
    .line 84
.end method

.method public final removeBackground(Landroid/view/SurfaceControl$Transaction;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 15
    :cond_1
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 19
    const/4 p1, 0x0

    .line 21
    iput-boolean p1, p0, Lcom/android/wm/shell/back/BackAnimationBackground;->mIsRequestingStatusBarAppearance:Z

    .line 22
    return-void
    .line 24
.end method
