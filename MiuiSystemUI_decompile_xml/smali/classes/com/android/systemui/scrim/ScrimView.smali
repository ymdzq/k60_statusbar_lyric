.class public Lcom/android/systemui/scrim/ScrimView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBlendWithMainColor:Z

.field public mChangeRunnable:Ljava/lang/Runnable;

.field public mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

.field public mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field public final mColorLock:Ljava/lang/Object;

.field public final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mDrawableBounds:Landroid/graphics/Rect;

.field public mExecutor:Ljava/util/concurrent/Executor;

.field public mExecutorLooper:Landroid/os/Looper;

.field public mTintColor:I

.field public final mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field public mViewAlpha:F


# direct methods
.method public static synthetic $r8$lambda$58RPn_Q24dN9AMFCzupw9Xbt1X0(Lcom/android/systemui/scrim/ScrimView;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorLock:Ljava/lang/Object;

    .line 6
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/android/systemui/scrim/ScrimView;->mBlendWithMainColor:Z

    .line 9
    new-instance p1, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-direct {p1}, Lcom/android/systemui/scrim/ScrimDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 11
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    .line 13
    new-instance p1, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Landroidx/profileinstaller/ProfileInstaller$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 14
    new-instance p1, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/scrim/ScrimView;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final canReceivePointerEvents()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final enableBottomEdgeConcave(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 4
    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    .line 20
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    new-instance p1, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    .line 26
    invoke-direct {p1}, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    .line 31
    iget v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadius:F

    .line 33
    iput v0, p1, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mPathOverlap:F

    .line 35
    iget-object p1, p1, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mCornerRadii:[F

    .line 37
    const/4 v1, 0x0

    .line 39
    aput v0, p1, v1

    .line 40
    const/4 v1, 0x1

    .line 42
    aput v0, p1, v1

    .line 43
    const/4 v1, 0x2

    .line 45
    aput v0, p1, v1

    .line 46
    const/4 v1, 0x3

    .line 48
    aput v0, p1, v1

    .line 49
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 51
    :cond_2
    :goto_1
    return-void
    .line 54
.end method

.method public final executeOnExecutor(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 15
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 21
    :goto_1
    return-void
.end method

.method public getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 5
    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 7
    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 13
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    throw p0
    .line 18
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTint()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 2
    return p0
    .line 4
.end method

.method public getViewAlpha()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    .line 2
    return p0
    .line 4
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    if-ne p1, v0, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 4
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 14
    instance-of v2, v1, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 16
    if-eqz v2, :cond_0

    .line 18
    check-cast v1, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 20
    invoke-static {v0}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseLargeScreenShadeHeader(Landroid/content/res/Resources;)Z

    .line 22
    move-result v0

    .line 25
    iput-boolean v0, v1, Lcom/android/systemui/scrim/ScrimDrawable;->mShouldUseLargeScreenSize:Z

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    :cond_1
    return-void
    .line 33
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    if-eqz p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 17
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method

.method public setBlendWithMainColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/scrim/ScrimView;->mBlendWithMainColor:Z

    .line 2
    return-void
    .line 4
.end method

.method public setBottomEdgePosition(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 4
    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 8
    iget v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgePosition:I

    .line 10
    if-ne v0, p1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iput p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgePosition:I

    .line 15
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    .line 17
    if-nez p1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/scrim/ScrimDrawable;->updatePath()V

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 25
    :cond_2
    :goto_0
    return-void
    .line 28
.end method

.method public setBottomEdgeRadius(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 8
    iget v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    .line 10
    cmpl-float v0, v0, p1

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iput p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mBottomEdgeRadius:F

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    .line 4
    return-void
    .line 6
.end method

.method public setClickable(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/scrim/ScrimView;Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 7
    return-void
    .line 10
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/scrim/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/scrim/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Colors cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCornerRadius(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 4
    if-eqz v0, :cond_2

    .line 6
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 8
    int-to-float p1, p1

    .line 10
    iget v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadius:F

    .line 11
    cmpl-float v0, p1, v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    iput p1, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mCornerRadius:F

    .line 18
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;->mConcaveInfo:Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    iput p1, v0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mPathOverlap:F

    .line 24
    iget-object v0, v0, Lcom/android/systemui/scrim/ScrimDrawable$ConcaveInfo;->mCornerRadii:[F

    .line 26
    const/4 v1, 0x0

    .line 28
    aput p1, v0, v1

    .line 29
    const/4 v1, 0x1

    .line 31
    aput p1, v0, v1

    .line 32
    const/4 v1, 0x2

    .line 34
    aput p1, v0, v1

    .line 35
    const/4 v1, 0x3

    .line 37
    aput p1, v0, v1

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/scrim/ScrimDrawable;->updatePath()V

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 43
    :cond_2
    :goto_0
    return-void
    .line 46
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/scrim/ScrimView;Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 7
    return-void
    .line 10
.end method

.method public setDrawableBounds(FFFF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    .line 6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 13
    float-to-int p1, p1

    .line 15
    float-to-int p2, p2

    .line 16
    float-to-int p3, p3

    .line 17
    float-to-int p4, p4

    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 26
    return-void
    .line 29
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    .line 4
    return-void
    .line 6
.end method

.method public setTint(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/scrim/ScrimView;->setTint(IZ)V

    return-void
.end method

.method public setTint(IZ)V
    .locals 1

    .line 2
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/scrim/ScrimView;IZ)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setViewAlpha(F)V
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;

    .line 8
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/scrim/ScrimView;F)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    .line 13
    return-void

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "alpha cannot be NaN: "

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
    .line 36
.end method

.method public final updateColorWithTint(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 4
    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 8
    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 10
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 12
    move-result v1

    .line 15
    int-to-float v1, v1

    .line 16
    const/high16 v2, 0x437f0000    # 255.0f

    .line 17
    div-float/2addr v1, v2

    .line 19
    iget v2, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 20
    iget-boolean v3, p0, Lcom/android/systemui/scrim/ScrimView;->mBlendWithMainColor:Z

    .line 22
    if-eqz v3, :cond_0

    .line 24
    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 26
    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    .line 28
    move-result v2

    .line 31
    iget v3, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 32
    invoke-static {v1, v2, v3}, Landroidx/core/graphics/ColorUtils;->blendARGB(FII)I

    .line 34
    move-result v2

    .line 37
    :cond_0
    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/scrim/ScrimDrawable;->setColor(IZ)V

    .line 38
    goto :goto_3

    .line 41
    :cond_1
    iget p1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 42
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    .line 44
    move-result p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    const/4 p1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_0
    if-eqz p1, :cond_5

    .line 53
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 55
    if-nez p1, :cond_3

    .line 57
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    .line 62
    move-result-object p1

    .line 65
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 66
    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    .line 70
    move-result v0

    .line 73
    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 74
    if-eq v0, v1, :cond_6

    .line 76
    :cond_4
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 78
    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 80
    invoke-direct {v0, v1, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 82
    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 85
    goto :goto_2

    .line 87
    :cond_5
    const/4 p1, 0x0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 89
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 93
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 100
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 103
    if-eqz p1, :cond_7

    .line 105
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    .line 107
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 109
    :cond_7
    return-void
    .line 112
.end method
