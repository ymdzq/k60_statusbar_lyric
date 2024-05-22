.class public final Lcom/android/wm/shell/common/split/SplitDecorManager;
.super Landroid/view/WindowlessWindowManager;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBackgroundLeash:Landroid/view/SurfaceControl;

.field public mFadeAnimator:Landroid/animation/ValueAnimator;

.field public mGapBackgroundLeash:Landroid/view/SurfaceControl;

.field public mHostLeash:Landroid/view/SurfaceControl;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconLeash:Landroid/view/SurfaceControl;

.field public final mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field public mIconSize:I

.field public mIsResizing:Z

.field public mMiuiIconSize:I

.field public mOffsetX:I

.field public mOffsetY:I

.field public final mOldBounds:Landroid/graphics/Rect;

.field public final mResizingBounds:Landroid/graphics/Rect;

.field public mResizingIconView:Landroid/widget/ImageView;

.field public mResizingShadowView:Landroid/widget/ImageView;

.field public mRunningAnimationCount:I

.field public mScreenshot:Landroid/view/SurfaceControl;

.field public mScreenshotAnimator:Landroid/animation/ValueAnimator;

.field public mShown:Z

.field public final mSurfaceSession:Landroid/view/SurfaceSession;

.field public final mTempRect:Landroid/graphics/Rect;

.field public mViewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/wm/shell/common/split/SplitDecorManager;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/res/Configuration;Lcom/android/launcher3/icons/IconProvider;Landroid/view/SurfaceSession;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/os/IBinder;)V

    .line 3
    new-instance p1, Landroid/graphics/Rect;

    .line 6
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 11
    new-instance p1, Landroid/graphics/Rect;

    .line 13
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    .line 20
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mTempRect:Landroid/graphics/Rect;

    .line 25
    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 28
    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 30
    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 32
    return-void
    .line 34
.end method


# virtual methods
.method public final fadeOutDecor(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->startFadeAnimation(ZZLjava/lang/Runnable;)V

    .line 23
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    if-eqz p1, :cond_2

    .line 29
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 31
    :cond_2
    :goto_0
    return-void
    .line 34
.end method

.method public final getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .locals 0

    .line 1
    new-instance p1, Landroid/view/SurfaceControl$Builder;

    .line 2
    new-instance p2, Landroid/view/SurfaceSession;

    .line 4
    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    .line 6
    invoke-direct {p1, p2}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    .line 12
    move-result-object p1

    .line 15
    const-string p2, "SplitDecorManager"

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 18
    move-result-object p1

    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    .line 23
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    .line 27
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 29
    move-result-object p1

    .line 32
    const-string p2, "SplitDecorManager#attachToParentSurface"

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 35
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 39
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 43
    return-object p1
    .line 45
.end method

.method public final inflate(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 11
    move-result-object v0

    .line 14
    const/16 v1, 0x7f6

    .line 15
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    .line 18
    move-result-object p1

    .line 21
    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    .line 22
    new-instance p2, Landroid/view/SurfaceControlViewHost;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 26
    move-result-object v0

    .line 29
    const-string v1, "SplitDecorManager"

    .line 30
    invoke-direct {p2, p1, v0, p0, v1}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    .line 32
    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object p2

    .line 40
    const v0, 0x7f0710c2    # @dimen/split_icon_size '72.0dp'

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result p2

    .line 47
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 50
    move-result-object p2

    .line 53
    const v0, 0x7f0d034f    # @layout/split_decor 'res/layout/split_decor.xml'

    .line 54
    invoke-virtual {p2, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 57
    move-result-object p2

    .line 60
    check-cast p2, Landroid/widget/FrameLayout;

    .line 61
    const v0, 0x7f0a08b8    # @id/split_resizing_icon

    .line 63
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/ImageView;

    .line 70
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    .line 72
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 74
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->isTestMode()Z

    .line 78
    move-result v0

    .line 81
    if-nez v0, :cond_1

    .line 82
    const v0, 0x7f0a08bb    # @id/split_shadow_icon

    .line 84
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 87
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/ImageView;

    .line 91
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 93
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    .line 95
    iput v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mMiuiIconSize:I

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p1

    .line 102
    const v0, 0x7f0709c1    # @dimen/miui_split_shadowed_icon_size '305.0dp'

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    move-result p1

    .line 109
    iput p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    .line 110
    :cond_1
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 112
    const/4 v3, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    const/16 v5, 0x7f6

    .line 116
    const/16 v6, 0x18

    .line 118
    const/4 v7, -0x3

    .line 120
    move-object v2, p1

    .line 121
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 122
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 125
    move-result v0

    .line 128
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 129
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 131
    move-result p3

    .line 134
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 135
    new-instance p3, Landroid/os/Binder;

    .line 137
    invoke-direct {p3}, Landroid/os/Binder;-><init>()V

    .line 139
    iput-object p3, p1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 142
    invoke-virtual {p1, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 144
    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 147
    const v0, 0x20000040

    .line 149
    or-int/2addr p3, v0

    .line 152
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 153
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 155
    invoke-virtual {p0, p2, p1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    .line 157
    return-void
    .line 160
.end method

.method public final onResized(Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 12
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 17
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetX:I

    .line 22
    int-to-float v2, v2

    .line 24
    iget v3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetY:I

    .line 25
    int-to-float v3, v3

    .line 27
    invoke-virtual {p1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 28
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 31
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 33
    const/4 v2, 0x2

    .line 36
    new-array v2, v2, [F

    .line 37
    fill-array-data v2, :array_0

    .line 39
    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 42
    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 46
    const-wide/16 v3, 0x85

    .line 48
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 50
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 53
    new-instance v3, Lcom/android/wm/shell/common/split/SplitDecorManager$$ExternalSyntheticLambda1;

    .line 55
    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/common/split/SplitDecorManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;)V

    .line 57
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 60
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 63
    new-instance v3, Lcom/android/wm/shell/common/split/SplitDecorManager$1;

    .line 65
    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/wm/shell/common/split/SplitDecorManager$1;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;I)V

    .line 67
    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 70
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 73
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    .line 78
    if-nez v0, :cond_3

    .line 80
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 82
    if-nez p0, :cond_2

    .line 84
    if-eqz p2, :cond_2

    .line 86
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 90
    :cond_2
    return-void

    .line 93
    :cond_3
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    .line 94
    iput v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetX:I

    .line 96
    iput v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetY:I

    .line 98
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 100
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 102
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    .line 105
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 107
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 110
    if-eqz v0, :cond_4

    .line 112
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 114
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 120
    if-nez v0, :cond_4

    .line 122
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 124
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 126
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 129
    new-instance v1, Lcom/android/wm/shell/common/split/SplitDecorManager$1;

    .line 131
    const/4 v2, 0x1

    .line 133
    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/wm/shell/common/split/SplitDecorManager$1;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Ljava/util/function/Consumer;I)V

    .line 134
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 137
    return-void

    .line 140
    :cond_4
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 141
    if-eqz v0, :cond_5

    .line 143
    new-instance p1, Lcom/android/wm/shell/common/split/SplitDecorManager$$ExternalSyntheticLambda2;

    .line 145
    invoke-direct {p1, p0, p2}, Lcom/android/wm/shell/common/split/SplitDecorManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Ljava/util/function/Consumer;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->fadeOutDecor(Ljava/lang/Runnable;)V

    .line 150
    goto :goto_0

    .line 153
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->releaseDecor(Landroid/view/SurfaceControl$Transaction;)V

    .line 154
    iget p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mRunningAnimationCount:I

    .line 157
    if-nez p0, :cond_6

    .line 159
    if-eqz p2, :cond_6

    .line 161
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 165
    :cond_6
    :goto_0
    return-void

    .line 168
    nop

    .line 169
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 170
.end method

.method public final onResizing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/SurfaceControl$Transaction;IIZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    .line 7
    const/4 v1, 0x1

    .line 9
    if-nez v0, :cond_1

    .line 10
    iput-boolean v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 21
    iput p5, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetX:I

    .line 24
    iput p6, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOffsetY:I

    .line 26
    iget-object p5, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 28
    const/4 p6, 0x0

    .line 30
    if-eqz p5, :cond_2

    .line 31
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 33
    move-result p5

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 39
    move-result v0

    .line 42
    if-ne p5, v0, :cond_4

    .line 43
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 45
    move-result p5

    .line 48
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 49
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 51
    move-result v0

    .line 54
    if-ne p5, v0, :cond_4

    .line 55
    iget-boolean p5, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 57
    if-eqz p5, :cond_3

    .line 59
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 62
    move-result p5

    .line 65
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 68
    move-result v0

    .line 71
    if-gt p5, v0, :cond_4

    .line 72
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 74
    move-result p5

    .line 77
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 80
    move-result v0

    .line 83
    if-le p5, v0, :cond_3

    .line 84
    goto :goto_0

    .line 86
    :cond_3
    move p5, p6

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    :goto_0
    move p5, v1

    .line 89
    :goto_1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 90
    if-eq p5, v0, :cond_5

    .line 92
    move v0, v1

    .line 94
    goto :goto_2

    .line 95
    :cond_5
    move v0, p6

    .line 96
    :goto_2
    if-eqz v0, :cond_6

    .line 97
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 99
    if-eqz v2, :cond_6

    .line 101
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 103
    move-result v2

    .line 106
    if-eqz v2, :cond_6

    .line 107
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 109
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 111
    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 114
    const/4 v3, -0x1

    .line 116
    if-nez v2, :cond_8

    .line 117
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    .line 119
    const-string v4, "ResizingBackground"

    .line 121
    iget-object v5, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 123
    invoke-static {v2, v4, v5}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    .line 125
    move-result-object v2

    .line 128
    iput-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 129
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 131
    move-result-object v4

    .line 134
    iget-object v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 135
    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 137
    move-result v5

    .line 140
    if-ne v5, v3, :cond_7

    .line 141
    move v5, v3

    .line 143
    :cond_7
    invoke-static {v5}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 144
    move-result-object v5

    .line 147
    invoke-virtual {v5}, Landroid/graphics/Color;->getComponents()[F

    .line 148
    move-result-object v5

    .line 151
    invoke-virtual {v4, v5}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getResizingBackgroundColor([F)[F

    .line 152
    move-result-object v4

    .line 155
    invoke-virtual {p4, v2, v4}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 156
    move-result-object v2

    .line 159
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 160
    const v5, 0x7ffffffe

    .line 162
    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 165
    :cond_8
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 168
    if-nez v2, :cond_d

    .line 170
    if-nez p7, :cond_d

    .line 172
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 174
    move-result v2

    .line 177
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 178
    move-result v4

    .line 181
    if-ne v2, v4, :cond_9

    .line 182
    goto :goto_3

    .line 184
    :cond_9
    move v1, p6

    .line 185
    :goto_3
    if-eqz v1, :cond_a

    .line 186
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 190
    move-result v2

    .line 193
    goto :goto_4

    .line 194
    :cond_a
    move v2, p6

    .line 195
    :goto_4
    if-eqz v1, :cond_b

    .line 196
    move v1, p6

    .line 198
    goto :goto_5

    .line 199
    :cond_b
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 200
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 202
    move-result v1

    .line 205
    :goto_5
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    .line 206
    const-string v5, "GapBackground"

    .line 208
    iget-object v6, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 210
    invoke-static {v4, v5, v6}, Lcom/android/wm/shell/common/SurfaceUtils;->makeColorLayer(Landroid/view/SurfaceControl;Ljava/lang/String;Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl;

    .line 212
    move-result-object v4

    .line 215
    iput-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 216
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 218
    move-result-object v5

    .line 221
    iget-object v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 222
    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    .line 224
    move-result v6

    .line 227
    if-ne v6, v3, :cond_c

    .line 228
    goto :goto_6

    .line 230
    :cond_c
    move v3, v6

    .line 231
    :goto_6
    invoke-static {v3}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    .line 232
    move-result-object v3

    .line 235
    invoke-virtual {v3}, Landroid/graphics/Color;->getComponents()[F

    .line 236
    move-result-object v3

    .line 239
    invoke-virtual {v5, v3}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getResizingBackgroundColor([F)[F

    .line 240
    move-result-object v3

    .line 243
    invoke-virtual {p4, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 244
    move-result-object v3

    .line 247
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 248
    const v5, 0x7ffffffd

    .line 250
    invoke-virtual {v3, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 253
    move-result-object v3

    .line 256
    iget-object v4, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 257
    int-to-float v2, v2

    .line 259
    int-to-float v1, v1

    .line 260
    invoke-virtual {v3, v4, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 261
    move-result-object v1

    .line 264
    iget-object v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 265
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    .line 267
    move-result v3

    .line 270
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    .line 271
    move-result p3

    .line 274
    invoke-virtual {v1, v2, v3, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 275
    :cond_d
    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 278
    if-nez p3, :cond_10

    .line 280
    iget-object p3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 282
    if-eqz p3, :cond_10

    .line 284
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 286
    invoke-virtual {v1, p3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    .line 288
    move-result-object p3

    .line 291
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 292
    if-eqz v1, :cond_e

    .line 294
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 296
    move-result-object v1

    .line 299
    invoke-virtual {v1, p1, p3}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getRoundIcon(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 300
    move-result-object p3

    .line 303
    :cond_e
    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 304
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    .line 306
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    .line 311
    invoke-virtual {p1, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 316
    if-eqz p1, :cond_f

    .line 318
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 320
    move-result-object p1

    .line 323
    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 324
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mMiuiIconSize:I

    .line 326
    iget v2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    .line 328
    invoke-virtual {p1, p3, v1, v2}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->createShadowedIcon(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    .line 330
    move-result-object p1

    .line 333
    if-eqz p1, :cond_f

    .line 334
    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 336
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 338
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 341
    invoke-virtual {p1, p6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    :cond_f
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 346
    invoke-virtual {p1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    .line 348
    move-result-object p1

    .line 351
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 352
    move-result-object p1

    .line 355
    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 356
    iget p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    .line 358
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 360
    iput p3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 362
    iget-object p3, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 364
    invoke-virtual {p3, p1}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 366
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 369
    const p3, 0x7fffffff

    .line 371
    invoke-virtual {p4, p1, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 374
    :cond_10
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 377
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 379
    move-result p3

    .line 382
    div-int/lit8 p3, p3, 0x2

    .line 383
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    .line 385
    div-int/lit8 v1, v1, 0x2

    .line 387
    sub-int/2addr p3, v1

    .line 389
    int-to-float p3, p3

    .line 390
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 391
    move-result p2

    .line 394
    div-int/lit8 p2, p2, 0x2

    .line 395
    iget v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconSize:I

    .line 397
    div-int/lit8 v1, v1, 0x2

    .line 399
    sub-int/2addr p2, v1

    .line 401
    int-to-float p2, p2

    .line 402
    invoke-virtual {p4, p1, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 403
    if-eqz v0, :cond_13

    .line 406
    if-eqz p7, :cond_11

    .line 408
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 410
    invoke-virtual {p4, p1, p5}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 412
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 415
    invoke-virtual {p4, p1, p5}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 417
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    .line 420
    move-result-object p1

    .line 423
    invoke-virtual {p1}, Lcom/android/wm/shell/sosc/SoScUtils;->isSoScSupported()Z

    .line 424
    move-result p1

    .line 427
    if-eqz p1, :cond_12

    .line 428
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 430
    const/high16 p2, 0x3f800000    # 1.0f

    .line 432
    invoke-virtual {p4, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 434
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 437
    invoke-virtual {p4, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 439
    goto :goto_7

    .line 442
    :cond_11
    const/4 p1, 0x0

    .line 443
    invoke-virtual {p0, p5, p6, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager;->startFadeAnimation(ZZLjava/lang/Runnable;)V

    .line 444
    :cond_12
    :goto_7
    iput-boolean p5, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 447
    :cond_13
    return-void
    .line 449
.end method

.method public final release(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 13
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 15
    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 20
    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32
    :cond_2
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 37
    if-eqz v0, :cond_4

    .line 39
    invoke-virtual {v0}, Landroid/view/SurfaceControlViewHost;->release()V

    .line 41
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mViewHost:Landroid/view/SurfaceControlViewHost;

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 46
    if-eqz v0, :cond_5

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 50
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 55
    if-eqz v0, :cond_6

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 59
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 62
    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 64
    if-eqz v0, :cond_7

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 68
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 71
    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 73
    if-eqz v0, :cond_8

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 77
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 80
    :cond_8
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    .line 82
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    .line 86
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 88
    const/4 p1, 0x0

    .line 90
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    .line 91
    iput-boolean p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 93
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 97
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 102
    return-void
    .line 105
.end method

.method public final releaseDecor(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 7
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mBackgroundLeash:Landroid/view/SurfaceControl;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 16
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mGapBackgroundLeash:Landroid/view/SurfaceControl;

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 21
    if-eqz v0, :cond_3

    .line 23
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    .line 25
    const/16 v2, 0x8

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingIconView:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 37
    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingShadowView:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIconLeash:Landroid/view/SurfaceControl;

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 51
    iput-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 54
    :cond_3
    return-void
    .line 56
.end method

.method public final screenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    .line 6
    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 20
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 30
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 36
    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mTempRect:Landroid/graphics/Rect;

    .line 43
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 45
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 47
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mTempRect:Landroid/graphics/Rect;

    .line 50
    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 53
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    .line 56
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mTempRect:Landroid/graphics/Rect;

    .line 58
    const v2, 0x7ffffffe

    .line 60
    invoke-static {p1, v0, v0, v1, v2}, Lcom/android/wm/shell/common/ScreenshotUtils;->takeScreenshot(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/graphics/Rect;I)Landroid/view/SurfaceControl;

    .line 63
    move-result-object p1

    .line 66
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 67
    :cond_2
    return-void
    .line 69
.end method

.method public final setScreenshotIfNeeded(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    invoke-virtual {p2}, Landroid/view/SurfaceControl;->isValid()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mShown:Z

    .line 11
    if-nez v0, :cond_3

    .line 13
    iget-boolean v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mIsResizing:Z

    .line 15
    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mOldBounds:Landroid/graphics/Rect;

    .line 19
    iget-object v1, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mResizingBounds:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshotAnimator:Landroid/animation/ValueAnimator;

    .line 39
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 45
    if-eqz v0, :cond_2

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 49
    :cond_2
    :goto_0
    iput-object p2, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mScreenshot:Landroid/view/SurfaceControl;

    .line 52
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mHostLeash:Landroid/view/SurfaceControl;

    .line 54
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 56
    const p0, 0x7ffffffe

    .line 59
    invoke-virtual {p1, p2, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 62
    :cond_3
    :goto_1
    return-void
    .line 65
.end method

.method public final startFadeAnimation(ZZLjava/lang/Runnable;)V
    .locals 8

    .line 1
    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    .line 2
    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [F

    .line 8
    fill-array-data v0, :array_0

    .line 10
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 17
    const-wide/16 v1, 0x85

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 24
    new-instance v1, Lcom/android/wm/shell/common/split/SplitDecorManager$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v1, p0, v3, p1}, Lcom/android/wm/shell/common/split/SplitDecorManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;Landroid/view/SurfaceControl$Transaction;Z)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 31
    iget-object v6, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 34
    new-instance v7, Lcom/android/wm/shell/common/split/SplitDecorManager$3;

    .line 36
    move-object v0, v7

    .line 38
    move-object v1, p0

    .line 39
    move v2, p1

    .line 40
    move v4, p2

    .line 41
    move-object v5, p3

    .line 42
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/common/split/SplitDecorManager$3;-><init>(Lcom/android/wm/shell/common/split/SplitDecorManager;ZLandroid/view/SurfaceControl$Transaction;ZLjava/lang/Runnable;)V

    .line 43
    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitDecorManager;->mFadeAnimator:Landroid/animation/ValueAnimator;

    .line 49
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 51
    return-void

    .line 54
    nop

    .line 55
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 56
.end method
