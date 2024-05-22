.class public Lcom/miui/charge/video/VideoChargeView;
.super Lcom/miui/charge/container/IChargeView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mVideoView:Lcom/miui/charge/video/VideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/video/VideoChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/video/VideoChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/charge/container/IChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/charge/video/VideoChargeView;->setComponentTransparent(Z)V

    return-void
.end method

.method private getChargeUri()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getResourcePath()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const v1, 0x7f120049    # @raw/wired_quick_charge_video 'res/raw/wired_quick_charge_video.mp4'

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    iget v2, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 24
    const/16 v3, 0xb

    .line 26
    const/4 v4, 0x3

    .line 28
    if-eq v2, v3, :cond_3

    .line 29
    const/16 v3, 0xa

    .line 31
    if-ne v2, v3, :cond_0

    .line 33
    sget-boolean v5, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 35
    if-eqz v5, :cond_0

    .line 37
    goto :goto_0

    .line 39
    :cond_0
    if-ne v2, v3, :cond_6

    .line 40
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 42
    if-ne v0, v4, :cond_1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getResourcePath()Ljava/lang/String;

    .line 51
    move-result-object p0

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const p0, 0x7f12004e    # @raw/wireless_strong 'res/raw/wireless_strong.mp4'

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 67
    goto/16 :goto_1

    .line 68
    :cond_1
    const/4 v1, 0x2

    .line 70
    if-ne v0, v1, :cond_2

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getResourcePath()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const p0, 0x7f12004d    # @raw/wireless_quick_charge_video 'res/raw/wireless_quick_charge_video.mp4'

    .line 85
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 94
    goto :goto_1

    .line 95
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getResourcePath()Ljava/lang/String;

    .line 101
    move-result-object p0

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const p0, 0x7f12004c    # @raw/wireless_charge_video 'res/raw/wireless_charge_video.mp4'

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object v0

    .line 117
    goto :goto_1

    .line 118
    :cond_3
    :goto_0
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 119
    if-ne v0, v4, :cond_4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getResourcePath()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 131
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const p0, 0x7f12004a    # @raw/wired_strong 'res/raw/wired_strong.mp4'

    .line 135
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    if-nez v0, :cond_5

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getResourcePath()Ljava/lang/String;

    .line 153
    move-result-object p0

    .line 156
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const p0, 0x7f120048    # @raw/wired_charge_video 'res/raw/wired_charge_video.mp4'

    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    goto :goto_1

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getResourcePath()Ljava/lang/String;

    .line 176
    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v0

    .line 189
    :cond_6
    :goto_1
    return-object v0
    .line 190
.end method

.method private getDefaultImageResId()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 2
    const/16 v1, 0xb

    .line 4
    const/4 v2, 0x3

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    const/16 v1, 0xa

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 13
    if-eqz v3, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    if-ne v0, v1, :cond_3

    .line 18
    iget p0, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 20
    if-ne p0, v2, :cond_1

    .line 22
    const p0, 0x7f0819e7    # @drawable/wireless_strong_super_charge_video_bg_img 'res/drawable-nodpi/wireless_strong_super_charge_video_bg_img.webp'

    .line 24
    goto :goto_1

    .line 27
    :cond_1
    const/4 v0, 0x2

    .line 28
    if-ne p0, v0, :cond_2

    .line 29
    const p0, 0x7f0819e8    # @drawable/wireless_super_charge_video_bg_img 'res/drawable-nodpi/wireless_super_charge_video_bg_img.webp'

    .line 31
    goto :goto_1

    .line 34
    :cond_2
    const p0, 0x7f0819ce    # @drawable/wireless_charge_video_bg_img 'res/drawable-nodpi/wireless_charge_video_bg_img.webp'

    .line 35
    goto :goto_1

    .line 38
    :cond_3
    const/4 p0, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_4
    :goto_0
    iget p0, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 41
    if-ne p0, v2, :cond_5

    .line 43
    const p0, 0x7f0819c9    # @drawable/wired_strong_super_charge_video_bg_img 'res/drawable-nodpi/wired_strong_super_charge_video_bg_img.webp'

    .line 45
    goto :goto_1

    .line 48
    :cond_5
    if-nez p0, :cond_6

    .line 49
    const p0, 0x7f0819c8    # @drawable/wired_charge_video_bg_img 'res/drawable-nodpi/wired_charge_video_bg_img.webp'

    .line 51
    goto :goto_1

    .line 54
    :cond_6
    const p0, 0x7f0819ca    # @drawable/wired_super_charge_video_bg_img 'res/drawable-nodpi/wired_super_charge_video_bg_img.webp'

    .line 55
    :goto_1
    return p0
    .line 58
.end method

.method private getResourcePath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "android.resource://"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string p0, "/"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    return-object p0
    .line 27
.end method


# virtual methods
.method public final addChildView()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/charge/video/VideoView;

    .line 2
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/charge/video/VideoView;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 9
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 11
    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mScreenSize:Landroid/graphics/Point;

    .line 15
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 17
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 21
    move-result v0

    .line 24
    iget-boolean v1, p0, Lcom/miui/charge/container/IChargeView;->mIsFoldChargeVideo:Z

    .line 25
    if-eqz v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 29
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 31
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getFoldingVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_0
    iget-boolean v1, p0, Lcom/miui/charge/container/IChargeView;->mIsPadChargeVideo:Z

    .line 41
    if-eqz v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 45
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 47
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 49
    move-result-object v1

    .line 52
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 57
    iget-object v2, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 59
    invoke-virtual {v2}, Lcom/miui/charge/video/VideoView;->getVideoHeight()I

    .line 61
    move-result v2

    .line 64
    sub-int/2addr v0, v2

    .line 65
    div-int/lit8 v0, v0, 0x2

    .line 66
    int-to-float v0, v0

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 69
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 72
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 74
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    move-result-object v1

    .line 79
    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    :cond_2
    :goto_0
    return-void
    .line 83
.end method

.method public getVideoTranslationY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mScreenSize:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 8
    move-result v0

    .line 11
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 12
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->getVideoHeight()I

    .line 14
    move-result p0

    .line 17
    sub-int/2addr v0, p0

    .line 18
    div-int/lit8 v0, v0, 0x2

    .line 19
    int-to-float p0, v0

    .line 21
    return p0
    .line 22
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/charge/container/IChargeView;->init(Landroid/content/Context;)V

    .line 2
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 5
    const/high16 p1, -0x1000000

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 9
    return-void
    .line 12
.end method

.method public final initAnimator()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    filled-new-array {v0, v1}, [I

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 12
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 14
    const-wide/16 v1, 0x320

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 19
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    new-instance v1, Landroid/animation/AnimatorSet;

    .line 25
    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 30
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 32
    return-void
    .line 35
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/charge/container/IChargeView;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 5
    move-result p1

    .line 8
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 9
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 13
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 18
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 23
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    .line 28
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setScaleY(F)V

    .line 33
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 38
    return-void
    .line 41
.end method

.method public final setComponentTransparent(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 16
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 21
    :goto_0
    return-void
    .line 24
.end method

.method public final setViewState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 2
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 9
    iput-object v2, v0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 14
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 20
    iput-object v2, v0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 23
    :cond_1
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 25
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 31
    iput-object v2, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 34
    :cond_2
    return-void
    .line 36
.end method

.method public final startAnimationOnChildView()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "startAnimationOnChildView: mChargeSpeed="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, " mWireState="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 20
    const-string v2, "VideoRapidChargeView"

    .line 22
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 24
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 27
    const/16 v1, 0xb

    .line 29
    const/4 v2, 0x3

    .line 31
    if-eq v0, v1, :cond_3

    .line 32
    const/16 v1, 0xa

    .line 34
    if-ne v0, v1, :cond_0

    .line 36
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 38
    if-eqz v3, :cond_0

    .line 40
    goto :goto_0

    .line 42
    :cond_0
    if-ne v0, v1, :cond_6

    .line 43
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 45
    if-ne v0, v2, :cond_1

    .line 47
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 49
    const v1, 0x7f0819e7    # @drawable/wireless_strong_super_charge_video_bg_img 'res/drawable-nodpi/wireless_strong_super_charge_video_bg_img.webp'

    .line 51
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 54
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 57
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setStrongRapidChargeUri(Ljava/lang/String;)V

    .line 63
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 66
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addStrongRapidChargeView()V

    .line 68
    goto/16 :goto_1

    .line 71
    :cond_1
    const/4 v1, 0x2

    .line 73
    if-ne v0, v1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 76
    const v1, 0x7f0819e8    # @drawable/wireless_super_charge_video_bg_img 'res/drawable-nodpi/wireless_super_charge_video_bg_img.webp'

    .line 78
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 81
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 84
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setRapidChargeUri(Ljava/lang/String;)V

    .line 90
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 93
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addRapidChargeView()V

    .line 95
    goto :goto_1

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 99
    const v1, 0x7f0819ce    # @drawable/wireless_charge_video_bg_img 'res/drawable-nodpi/wireless_charge_video_bg_img.webp'

    .line 101
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 104
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 107
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 109
    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setChargeUri(Ljava/lang/String;)V

    .line 113
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 116
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addChargeView()V

    .line 118
    goto :goto_1

    .line 121
    :cond_3
    :goto_0
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 122
    if-nez v0, :cond_4

    .line 124
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 126
    const v1, 0x7f0819c8    # @drawable/wired_charge_video_bg_img 'res/drawable-nodpi/wired_charge_video_bg_img.webp'

    .line 128
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 131
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 134
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 136
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setChargeUri(Ljava/lang/String;)V

    .line 140
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 143
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addChargeView()V

    .line 145
    goto :goto_1

    .line 148
    :cond_4
    if-ne v0, v2, :cond_5

    .line 149
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 151
    const v1, 0x7f0819c9    # @drawable/wired_strong_super_charge_video_bg_img 'res/drawable-nodpi/wired_strong_super_charge_video_bg_img.webp'

    .line 153
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 156
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 159
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setStrongRapidChargeUri(Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 168
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addStrongRapidChargeView()V

    .line 170
    goto :goto_1

    .line 173
    :cond_5
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 174
    const v1, 0x7f0819ca    # @drawable/wired_super_charge_video_bg_img 'res/drawable-nodpi/wired_super_charge_video_bg_img.webp'

    .line 176
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 179
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 182
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/miui/charge/video/VideoView;->setRapidChargeUri(Ljava/lang/String;)V

    .line 188
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 191
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addRapidChargeView()V

    .line 193
    :cond_6
    :goto_1
    return-void
    .line 196
.end method

.method public final startDismiss(Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Lcom/miui/charge/container/IChargeView;->startDismiss(Ljava/lang/String;)V

    .line 2
    sget-object v0, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 5
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [F

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 10
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput v3, v2, v4

    .line 15
    const/4 v3, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    aput v5, v2, v3

    .line 19
    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 21
    move-result-object v0

    .line 24
    filled-new-array {v0}, [Landroid/animation/PropertyValuesHolder;

    .line 25
    move-result-object v0

    .line 28
    invoke-static {p0, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 29
    move-result-object v0

    .line 32
    const-wide/16 v6, 0x258

    .line 33
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 35
    move-result-object v0

    .line 38
    sget-object v2, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 39
    new-array v8, v1, [F

    .line 41
    iget-object v9, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 43
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getAlpha()F

    .line 45
    move-result v9

    .line 48
    aput v9, v8, v4

    .line 49
    aput v5, v8, v3

    .line 51
    invoke-static {v2, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 53
    move-result-object v2

    .line 56
    iget-object v8, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 57
    filled-new-array {v2}, [Landroid/animation/PropertyValuesHolder;

    .line 59
    move-result-object v9

    .line 62
    invoke-static {v8, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 63
    move-result-object v8

    .line 66
    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 67
    move-result-object v8

    .line 70
    iget v9, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 71
    const/16 v10, 0xa

    .line 73
    if-ne v9, v10, :cond_0

    .line 75
    sget-object v8, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 77
    new-array v9, v1, [F

    .line 79
    iget-object v10, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 81
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    .line 83
    move-result v10

    .line 86
    aput v10, v9, v4

    .line 87
    aput v5, v9, v3

    .line 89
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 91
    move-result-object v8

    .line 94
    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 95
    new-array v10, v1, [F

    .line 97
    iget-object v11, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getScaleY()F

    .line 101
    move-result v11

    .line 104
    aput v11, v10, v4

    .line 105
    aput v5, v10, v3

    .line 107
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 109
    move-result-object v9

    .line 112
    iget-object v10, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 113
    filled-new-array {v2, v8, v9}, [Landroid/animation/PropertyValuesHolder;

    .line 115
    move-result-object v2

    .line 118
    invoke-static {v10, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 119
    move-result-object v2

    .line 122
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    move-result-object v8

    .line 126
    sget-object v2, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 127
    new-array v9, v1, [F

    .line 129
    iget-object v10, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 131
    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getAlpha()F

    .line 133
    move-result v10

    .line 136
    aput v10, v9, v4

    .line 137
    aput v5, v9, v3

    .line 139
    invoke-static {v2, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 141
    move-result-object v2

    .line 144
    sget-object v9, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 145
    new-array v10, v1, [F

    .line 147
    iget-object v11, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 149
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getScaleX()F

    .line 151
    move-result v11

    .line 154
    aput v11, v10, v4

    .line 155
    aput v5, v10, v3

    .line 157
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 159
    move-result-object v9

    .line 162
    sget-object v10, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 163
    new-array v1, v1, [F

    .line 165
    iget-object v11, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 167
    invoke-virtual {v11}, Landroid/widget/RelativeLayout;->getScaleY()F

    .line 169
    move-result v11

    .line 172
    aput v11, v1, v4

    .line 173
    aput v5, v1, v3

    .line 175
    invoke-static {v10, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 177
    move-result-object v1

    .line 180
    iget-object v3, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 181
    filled-new-array {v2, v9, v1}, [Landroid/animation/PropertyValuesHolder;

    .line 183
    move-result-object v1

    .line 186
    invoke-static {v3, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 187
    move-result-object v1

    .line 190
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 191
    move-result-object v1

    .line 194
    iget-object v2, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 195
    filled-new-array {v8, v1}, [Landroid/animation/Animator;

    .line 197
    move-result-object v1

    .line 200
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 201
    goto :goto_0

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 205
    invoke-virtual {v1, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 207
    :goto_0
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 210
    iget-object v2, p0, Lcom/miui/charge/container/IChargeView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 212
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 214
    const-string v1, "dismiss_for_timeout"

    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 219
    move-result p1

    .line 222
    if-nez p1, :cond_1

    .line 223
    iget-object p1, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 225
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 227
    move-result-object p1

    .line 230
    invoke-virtual {p1, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 231
    :cond_1
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 234
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 236
    return-void
    .line 239
.end method

.method public final stopChildAnimation()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 2
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 14
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 16
    :cond_0
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 19
    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 23
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 29
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 31
    :cond_1
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 34
    if-eqz v1, :cond_2

    .line 36
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 38
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    iget-object v0, v0, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 44
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 49
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 51
    const/4 v2, 0x0

    .line 53
    if-eqz v1, :cond_3

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 56
    iput-object v2, v0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 61
    iget-object v1, v0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 63
    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 67
    iput-object v2, v0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 70
    :cond_4
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 72
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 74
    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 78
    iput-object v2, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 81
    :cond_5
    return-void
    .line 83
.end method

.method public final switchContainerViewAnimation(I)V
    .locals 6

    .line 1
    const-string/jumbo v0, "switchVideoViewAnimation: chargeSpeed="

    .line 2
    const-string v1, " mWireState="

    .line 5
    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    move-result-object v0

    .line 10
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 11
    const-string v2, "VideoRapidChargeView"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    iput p1, p0, Lcom/miui/charge/container/IChargeView;->mChargeSpeed:I

    .line 18
    const-wide/16 v0, 0x258

    .line 20
    const/4 v2, 0x2

    .line 22
    if-eqz p1, :cond_c

    .line 23
    const/4 v3, 0x1

    .line 25
    if-eq p1, v3, :cond_6

    .line 26
    if-eq p1, v2, :cond_6

    .line 28
    const/4 v3, 0x3

    .line 30
    if-eq p1, v3, :cond_0

    .line 31
    goto/16 :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 35
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getDefaultImageResId()I

    .line 37
    move-result v3

    .line 40
    invoke-virtual {p1, v3}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 41
    iget-object p1, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 44
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 49
    invoke-virtual {p1, v3}, Lcom/miui/charge/video/VideoView;->setStrongRapidChargeUri(Ljava/lang/String;)V

    .line 50
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 53
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 55
    if-nez p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 59
    if-nez p1, :cond_1

    .line 61
    goto/16 :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 65
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 67
    move-result p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    goto/16 :goto_0

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 75
    if-nez p1, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addStrongRapidChargeView()V

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 82
    if-eqz p1, :cond_4

    .line 84
    sget-object v3, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 86
    new-array v4, v2, [F

    .line 88
    fill-array-data v4, :array_0

    .line 90
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 93
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->alphaStrongOut:Landroid/animation/ObjectAnimator;

    .line 97
    :cond_4
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 99
    if-eqz p1, :cond_5

    .line 101
    sget-object v3, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 103
    new-array v4, v2, [F

    .line 105
    fill-array-data v4, :array_1

    .line 107
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 110
    move-result-object p1

    .line 113
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->alphaStrongOut:Landroid/animation/ObjectAnimator;

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 116
    sget-object v3, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 118
    new-array v2, v2, [F

    .line 120
    fill-array-data v2, :array_2

    .line 122
    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 125
    move-result-object p1

    .line 128
    iget-object v2, p0, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 129
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 131
    move-result-object p1

    .line 134
    iget-object v2, p0, Lcom/miui/charge/video/VideoView;->alphaStrongOut:Landroid/animation/ObjectAnimator;

    .line 135
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 137
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 140
    new-instance v2, Lcom/miui/charge/video/VideoView$4;

    .line 142
    const/4 v3, 0x0

    .line 144
    invoke-direct {v2, p0, v3}, Lcom/miui/charge/video/VideoView$4;-><init>(Lcom/miui/charge/video/VideoView;I)V

    .line 145
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 148
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 151
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 153
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mToStrongRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 156
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 158
    goto/16 :goto_0

    .line 161
    :cond_6
    iget-object p1, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 163
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getDefaultImageResId()I

    .line 165
    move-result v4

    .line 168
    invoke-virtual {p1, v4}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 169
    iget-object p1, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 172
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 174
    move-result-object v4

    .line 177
    invoke-virtual {p1, v4}, Lcom/miui/charge/video/VideoView;->setRapidChargeUri(Ljava/lang/String;)V

    .line 178
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 181
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 183
    if-nez p1, :cond_7

    .line 185
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 187
    if-nez p1, :cond_7

    .line 189
    goto/16 :goto_0

    .line 191
    :cond_7
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 193
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 195
    move-result p1

    .line 198
    if-eqz p1, :cond_8

    .line 199
    goto/16 :goto_0

    .line 201
    :cond_8
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 203
    if-nez p1, :cond_9

    .line 205
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addRapidChargeView()V

    .line 207
    :cond_9
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 210
    if-eqz p1, :cond_a

    .line 212
    sget-object v4, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 214
    new-array v5, v2, [F

    .line 216
    fill-array-data v5, :array_3

    .line 218
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 221
    move-result-object p1

    .line 224
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->alphaRapidOut:Landroid/animation/ObjectAnimator;

    .line 225
    :cond_a
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 227
    if-eqz p1, :cond_b

    .line 229
    sget-object v4, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 231
    new-array v5, v2, [F

    .line 233
    fill-array-data v5, :array_4

    .line 235
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 238
    move-result-object p1

    .line 241
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->alphaRapidOut:Landroid/animation/ObjectAnimator;

    .line 242
    :cond_b
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 244
    sget-object v4, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 246
    new-array v2, v2, [F

    .line 248
    fill-array-data v2, :array_5

    .line 250
    invoke-static {p1, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 253
    move-result-object p1

    .line 256
    iget-object v2, p0, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 257
    iget-object v4, p0, Lcom/miui/charge/video/VideoView;->alphaRapidOut:Landroid/animation/ObjectAnimator;

    .line 259
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 261
    move-result-object v2

    .line 264
    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 265
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 268
    new-instance v2, Lcom/miui/charge/video/VideoView$4;

    .line 270
    invoke-direct {v2, p0, v3}, Lcom/miui/charge/video/VideoView$4;-><init>(Lcom/miui/charge/video/VideoView;I)V

    .line 272
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 275
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 278
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 280
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mToRapidAnimatorSet:Landroid/animation/AnimatorSet;

    .line 283
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 285
    goto/16 :goto_0

    .line 288
    :cond_c
    iget-object p1, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 290
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getDefaultImageResId()I

    .line 292
    move-result v3

    .line 295
    invoke-virtual {p1, v3}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 296
    iget-object p1, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 299
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getChargeUri()Ljava/lang/String;

    .line 301
    move-result-object v3

    .line 304
    invoke-virtual {p1, v3}, Lcom/miui/charge/video/VideoView;->setChargeUri(Ljava/lang/String;)V

    .line 305
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 308
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 310
    if-nez p1, :cond_d

    .line 312
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 314
    if-nez p1, :cond_d

    .line 316
    goto :goto_0

    .line 318
    :cond_d
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 319
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 321
    move-result p1

    .line 324
    if-eqz p1, :cond_e

    .line 325
    goto :goto_0

    .line 327
    :cond_e
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 328
    if-nez p1, :cond_f

    .line 330
    invoke-virtual {p0}, Lcom/miui/charge/video/VideoView;->addChargeView()V

    .line 332
    :cond_f
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeView:Landroid/view/TextureView;

    .line 335
    if-eqz p1, :cond_10

    .line 337
    sget-object v3, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 339
    new-array v4, v2, [F

    .line 341
    fill-array-data v4, :array_6

    .line 343
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 346
    move-result-object p1

    .line 349
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->alphaOut:Landroid/animation/ObjectAnimator;

    .line 350
    :cond_10
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeView:Landroid/view/TextureView;

    .line 352
    if-eqz p1, :cond_11

    .line 354
    sget-object v3, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 356
    new-array v4, v2, [F

    .line 358
    fill-array-data v4, :array_7

    .line 360
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 363
    move-result-object p1

    .line 366
    iput-object p1, p0, Lcom/miui/charge/video/VideoView;->alphaOut:Landroid/animation/ObjectAnimator;

    .line 367
    :cond_11
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mChargeView:Landroid/view/TextureView;

    .line 369
    sget-object v3, Landroid/widget/RelativeLayout;->ALPHA:Landroid/util/Property;

    .line 371
    new-array v4, v2, [F

    .line 373
    fill-array-data v4, :array_8

    .line 375
    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 378
    move-result-object p1

    .line 381
    iget-object v3, p0, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 382
    iget-object v4, p0, Lcom/miui/charge/video/VideoView;->alphaOut:Landroid/animation/ObjectAnimator;

    .line 384
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 386
    move-result-object v3

    .line 389
    invoke-virtual {v3, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 390
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 393
    new-instance v3, Lcom/miui/charge/video/VideoView$4;

    .line 395
    invoke-direct {v3, p0, v2}, Lcom/miui/charge/video/VideoView$4;-><init>(Lcom/miui/charge/video/VideoView;I)V

    .line 397
    invoke-virtual {p1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 400
    iget-object p1, p0, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 403
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 405
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mToNormalAnimatorSet:Landroid/animation/AnimatorSet;

    .line 408
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 410
    :goto_0
    return-void

    .line 413
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 414
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 422
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 430
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 438
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 446
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 454
    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 462
    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 470
    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 478
.end method

.method public final updateLayoutParamForScreenSizeChange()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/charge/container/IChargeView;->mIsFoldChargeVideo:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-boolean v0, p0, Lcom/miui/charge/container/IChargeView;->mIsPadChargeVideo:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mScreenSize:Landroid/graphics/Point;

    .line 10
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 12
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 14
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 16
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 20
    iget-object v2, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 22
    invoke-virtual {v2}, Lcom/miui/charge/video/VideoView;->getVideoHeight()I

    .line 24
    move-result v2

    .line 27
    sub-int/2addr v0, v2

    .line 28
    div-int/lit8 v0, v0, 0x2

    .line 29
    int-to-float v0, v0

    .line 31
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 32
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 35
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 41
    const/4 v1, -0x1

    .line 43
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 44
    iget-object v1, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 46
    invoke-virtual {v1}, Lcom/miui/charge/video/VideoView;->getVideoHeight()I

    .line 48
    move-result v1

    .line 51
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 52
    iget-object p0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoChargeView;->mVideoView:Lcom/miui/charge/video/VideoView;

    .line 60
    invoke-direct {p0}, Lcom/miui/charge/video/VideoChargeView;->getDefaultImageResId()I

    .line 62
    move-result p0

    .line 65
    invoke-virtual {v0, p0}, Lcom/miui/charge/video/VideoView;->setDefaultImage(I)V

    .line 66
    :goto_0
    return-void
    .line 69
.end method
