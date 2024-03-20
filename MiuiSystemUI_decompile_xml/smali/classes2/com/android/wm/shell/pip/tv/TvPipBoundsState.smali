.class public final Lcom/android/wm/shell/pip/tv/TvPipBoundsState;
.super Lcom/android/wm/shell/pip/PipBoundsState;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultGravity:I

.field public mDesiredTvExpandedAspectRatio:F

.field public mIsRtl:Z

.field public final mIsTvExpandedPipSupported:Z

.field public mIsTvPipExpanded:Z

.field public mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

.field public mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

.field public mPreviousCollapsedGravity:I

.field public mTvExpandedSize:Landroid/util/Size;

.field public mTvFixedPipOrientation:I

.field public mTvPipGravity:I

.field public mTvPipManuallyCollapsed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/pip/PipBoundsState;-><init>(Landroid/content/Context;Lcom/android/wm/shell/pip/phone/PipSizeSpecHandler;Lcom/android/wm/shell/pip/PipDisplayLayoutState;)V

    .line 2
    sget-object p2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuPermanentDecorInsets:Landroid/graphics/Insets;

    .line 7
    iput-object p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPipMenuTemporaryDecorInsets:Landroid/graphics/Insets;

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->updateDefaultGravity()V

    .line 13
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 16
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object p1

    .line 23
    const-string p2, "android.software.expanded_picture_in_picture"

    .line 24
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 26
    move-result p1

    .line 29
    iput-boolean p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsTvExpandedPipSupported:Z

    .line 30
    return-void
    .line 32
.end method


# virtual methods
.method public final onConfigurationChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->updateDefaultGravity()V

    .line 2
    return-void
    .line 5
.end method

.method public final setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V

    .line 2
    if-nez p3, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    invoke-virtual {p3}, Landroid/app/PictureInPictureParams;->getExpandedAspectRatioFloat()F

    .line 8
    move-result p1

    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->setDesiredTvExpandedAspectRatio(FZ)V

    .line 13
    return-void
    .line 16
.end method

.method public final setDesiredTvExpandedAspectRatio(FZ)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    const/high16 v3, 0x3f800000    # 1.0f

    .line 5
    if-nez p2, :cond_5

    .line 7
    iget p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 9
    if-nez p2, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    cmpl-float v4, p1, v3

    .line 14
    if-lez v4, :cond_1

    .line 16
    if-eq p2, v0, :cond_3

    .line 18
    :cond_1
    cmpg-float v0, p1, v3

    .line 20
    if-gtz v0, :cond_2

    .line 22
    if-eq p2, v1, :cond_3

    .line 24
    :cond_2
    cmpl-float p2, p1, v2

    .line 26
    if-nez p2, :cond_4

    .line 28
    :cond_3
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 30
    :cond_4
    return-void

    .line 32
    :cond_5
    :goto_0
    const/4 p2, 0x0

    .line 33
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 34
    iget v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 36
    iput v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipGravity:I

    .line 38
    iput v4, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 40
    iput-boolean p2, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvPipManuallyCollapsed:Z

    .line 42
    iput p1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDesiredTvExpandedAspectRatio:F

    .line 44
    cmpl-float p2, p1, v2

    .line 46
    if-eqz p2, :cond_7

    .line 48
    cmpl-float p1, p1, v3

    .line 50
    if-lez p1, :cond_6

    .line 52
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 54
    goto :goto_1

    .line 56
    :cond_6
    iput v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mTvFixedPipOrientation:I

    .line 57
    :cond_7
    :goto_1
    return-void
    .line 59
.end method

.method public final updateDefaultGravity()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 12
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    const/4 v0, 0x3

    .line 21
    const/4 v2, 0x5

    .line 22
    if-eqz v1, :cond_1

    .line 23
    move v3, v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v3, v2

    .line 27
    :goto_1
    or-int/lit8 v3, v3, 0x50

    .line 28
    iput v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mDefaultGravity:I

    .line 30
    iget-boolean v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsRtl:Z

    .line 32
    if-eq v3, v1, :cond_3

    .line 34
    iget v3, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 36
    and-int/lit8 v4, v3, 0x7

    .line 38
    and-int/lit8 v3, v3, 0x70

    .line 40
    and-int/lit8 v5, v4, 0x5

    .line 42
    if-ne v5, v2, :cond_2

    .line 44
    or-int/2addr v0, v3

    .line 46
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 47
    goto :goto_2

    .line 49
    :cond_2
    and-int/2addr v4, v0

    .line 50
    if-ne v4, v0, :cond_3

    .line 51
    or-int/lit8 v0, v3, 0x5

    .line 53
    iput v0, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mPreviousCollapsedGravity:I

    .line 55
    :cond_3
    :goto_2
    iput-boolean v1, p0, Lcom/android/wm/shell/pip/tv/TvPipBoundsState;->mIsRtl:Z

    .line 57
    return-void
    .line 59
.end method
