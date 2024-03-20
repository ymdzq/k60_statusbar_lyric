.class public final Lmiuix/slidingwidget/widget/SlidingButtonHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mAnimChecked:Z

.field public mAnimCheckedTemp:Z

.field public mCornerRadius:I

.field public mExtraAlpha:F

.field public mHeight:I

.field public final mInvalidateUpdateListener:Lmiuix/slidingwidget/widget/SlidingButtonHelper$$ExternalSyntheticLambda0;

.field public mIsSliderEdgeReached:Z

.field public mLastX:I

.field public mMarginHorizontal:I

.field public mMarginVertical:I

.field public mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field public mMaskCheckedSlideBarAlpha:F

.field public final mMaskCheckedSlideBarAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

.field public mMaskCheckedSlideBarAlphaTemp:F

.field public mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

.field public mMaskUnCheckedPressedSlideBarAlpha:F

.field public final mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

.field public mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

.field public mMaxTranslateOffset:I

.field public mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field public mOriginalTouchPointX:I

.field public mParamCached:Z

.field public mSlideBar:Landroid/graphics/drawable/StateListDrawable;

.field public mSliderHeight:I

.field public mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mSliderMoved:Z

.field public mSliderOff:Landroid/graphics/drawable/Drawable;

.field public mSliderOffset:I

.field public final mSliderOffsetProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

.field public mSliderOffsetTemp:I

.field public mSliderOn:Landroid/graphics/drawable/Drawable;

.field public mSliderOnAlpha:I

.field public mSliderOnAlphaTemp:I

.field public mSliderPositionEnd:I

.field public mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mSliderScale:F

.field public final mSliderScaleFloatProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

.field public mSliderShadow:Landroid/graphics/drawable/Drawable;

.field public mSliderShadowAlpha:F

.field public final mSliderShadowAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

.field public mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mSliderStroke:Landroid/graphics/drawable/Drawable;

.field public mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mSliderWidth:I

.field public mSlidingBarColor:I

.field public mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mStrokeAlpha:F

.field public final mStrokeAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

.field public mTapThreshold:I

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTracking:Z

.field public mTranslateDist:[F

.field public mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

.field public mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

.field public final mView:Landroid/widget/CompoundButton;

.field public mWidth:I


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 13
    new-instance v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 15
    const-string v2, "SliderOffset"

    .line 17
    invoke-direct {v1, p0, v2, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;I)V

    .line 19
    iput-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 22
    const/high16 v1, 0x3f800000    # 1.0f

    .line 24
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    .line 26
    const/4 v2, 0x0

    .line 28
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    .line 29
    const v3, 0x3dcccccd    # 0.1f

    .line 31
    iput v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlpha:F

    .line 34
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 36
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    .line 38
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    .line 40
    const/4 v3, -0x1

    .line 42
    iput v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 43
    iput v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 45
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    .line 49
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 51
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 53
    const-string v3, "SliderScale"

    .line 55
    const/4 v4, 0x1

    .line 57
    invoke-direct {v0, p0, v3, v4}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;I)V

    .line 58
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 61
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$$ExternalSyntheticLambda0;

    .line 63
    invoke-direct {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$$ExternalSyntheticLambda0;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V

    .line 65
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/slidingwidget/widget/SlidingButtonHelper$$ExternalSyntheticLambda0;

    .line 68
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 70
    const-string v3, "SliderShadowAlpha"

    .line 72
    const/4 v4, 0x2

    .line 74
    invoke-direct {v0, p0, v3, v4}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;I)V

    .line 75
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 78
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 80
    const-string v3, "StrokeAlpha"

    .line 82
    const/4 v5, 0x3

    .line 84
    invoke-direct {v0, p0, v3, v5}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;I)V

    .line 85
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 88
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 90
    const-string v3, "MaskCheckedSlideBarAlpha"

    .line 92
    const/4 v5, 0x4

    .line 94
    invoke-direct {v0, p0, v3, v5}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;I)V

    .line 95
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 98
    new-instance v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 100
    const-string v3, "MaskUnCheckedSlideBarAlpha"

    .line 102
    const/4 v5, 0x5

    .line 104
    invoke-direct {v0, p0, v3, v5}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;Ljava/lang/String;I)V

    .line 105
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 108
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    .line 110
    new-array v0, v4, [F

    .line 112
    fill-array-data v0, :array_0

    .line 114
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 117
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 119
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 121
    move-result v0

    .line 124
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 125
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 127
    move-result p1

    .line 130
    if-nez p1, :cond_0

    .line 131
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 133
    :cond_0
    return-void

    .line 135
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
    .line 136
.end method


# virtual methods
.method public final animateToState(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eq p1, v1, :cond_9

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 11
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_3

    .line 22
    :cond_0
    iget-boolean v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 24
    if-eqz v1, :cond_1

    .line 26
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    move v3, v2

    .line 31
    :goto_0
    iput v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 32
    if-eqz v1, :cond_2

    .line 34
    const/16 v1, 0xff

    .line 36
    goto :goto_1

    .line 38
    :cond_2
    move v1, v2

    .line 39
    :goto_1
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 40
    :cond_3
    iget-boolean v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    .line 42
    if-eqz v1, :cond_4

    .line 44
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 46
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 48
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 50
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 52
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 54
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 56
    iget-boolean v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    .line 58
    iput-boolean v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 60
    iput-boolean v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    .line 62
    const/4 v1, -0x1

    .line 64
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 65
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 69
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 71
    :cond_4
    iget-boolean v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 73
    if-eqz v1, :cond_6

    .line 75
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 77
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 79
    move-result v1

    .line 82
    if-eqz v1, :cond_5

    .line 83
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 85
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 87
    :cond_5
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 90
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 92
    move-result v1

    .line 95
    if-nez v1, :cond_6

    .line 96
    if-nez p1, :cond_6

    .line 98
    const/high16 v1, 0x3f800000    # 1.0f

    .line 100
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 102
    :cond_6
    iget-boolean v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 104
    if-nez v1, :cond_8

    .line 106
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 108
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 110
    move-result v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 116
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 118
    :cond_7
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 121
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 123
    move-result v1

    .line 126
    if-nez v1, :cond_8

    .line 127
    if-eqz p1, :cond_8

    .line 129
    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 132
    :cond_8
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->notifyCheckedChangeListener()V

    .line 134
    :cond_9
    if-eqz p1, :cond_a

    .line 137
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 139
    :cond_a
    new-instance v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;

    .line 141
    invoke-direct {v1, p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper;)V

    .line 143
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 146
    if-eqz v3, :cond_b

    .line 148
    invoke-virtual {v3}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 150
    move-result v3

    .line 153
    if-eqz v3, :cond_b

    .line 154
    iget-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 156
    invoke-virtual {v3}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 158
    :cond_b
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 161
    move-result v3

    .line 164
    if-eq p1, v3, :cond_c

    .line 165
    goto :goto_2

    .line 167
    :cond_c
    new-instance v3, Lmiuix/animation/physics/SpringAnimation;

    .line 168
    iget-object v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 170
    int-to-float v2, v2

    .line 172
    invoke-direct {v3, v0, v4, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 173
    iput-object v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 176
    invoke-virtual {v3}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 178
    move-result-object v0

    .line 181
    const v2, 0x4476bd71

    .line 182
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 185
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 188
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 190
    move-result-object v0

    .line 193
    const v2, 0x3f333333    # 0.7f

    .line 194
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 197
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 200
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/slidingwidget/widget/SlidingButtonHelper$$ExternalSyntheticLambda0;

    .line 202
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 204
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 207
    new-instance v2, Lmiuix/slidingwidget/widget/SlidingButtonHelper$7;

    .line 209
    invoke-direct {v2, v1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper$7;-><init>(Lmiuix/slidingwidget/widget/SlidingButtonHelper$8;)V

    .line 211
    invoke-virtual {v0, v2}, Lmiuix/animation/physics/DynamicAnimation;->addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 214
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 217
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 219
    if-eqz p1, :cond_e

    .line 222
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 224
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 226
    move-result p1

    .line 229
    if-nez p1, :cond_d

    .line 230
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 232
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 234
    :cond_d
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 237
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 239
    move-result p1

    .line 242
    if-eqz p1, :cond_10

    .line 243
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 245
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 247
    goto :goto_2

    .line 250
    :cond_e
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 251
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 253
    move-result p1

    .line 256
    if-nez p1, :cond_f

    .line 257
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 259
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 261
    :cond_f
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 264
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 266
    move-result p1

    .line 269
    if-eqz p1, :cond_10

    .line 270
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 272
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 274
    :cond_10
    :goto_2
    return-void
    .line 277
.end method

.method public final createMaskDrawable(Landroid/graphics/drawable/Drawable;)Lmiuix/smooth/SmoothContainerDrawable2;
    .locals 4

    .line 1
    new-instance v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 2
    invoke-direct {v0}, Lmiuix/smooth/SmoothContainerDrawable2;-><init>()V

    .line 4
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 7
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getLayerType()I

    .line 9
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 13
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mCornerRadius:I

    .line 16
    int-to-float v1, v1

    .line 18
    invoke-virtual {v0, v1}, Lmiuix/smooth/SmoothContainerDrawable2;->setCornerRadius(F)V

    .line 19
    iget-object v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 26
    invoke-direct {v1}, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;-><init>()V

    .line 28
    iput-object p1, v1, Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 33
    iget-object p1, v0, Lmiuix/smooth/SmoothContainerDrawable2;->mContainerState:Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;

    .line 36
    iput-object v1, p1, Lmiuix/smooth/SmoothContainerDrawable2$ContainerState;->mChildDrawableWrapper:Lmiuix/smooth/SmoothContainerDrawable2$ChildDrawableWrapper;

    .line 38
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .line 40
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginHorizontal:I

    .line 42
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginVertical:I

    .line 44
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 46
    sub-int/2addr v3, v1

    .line 48
    iget p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 49
    sub-int/2addr p0, v2

    .line 51
    invoke-direct {p1, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 52
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 55
    return-object v0
    .line 58
.end method

.method public final initAnim()V
    .locals 10

    .line 1
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 2
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 4
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScaleFloatProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 6
    const v3, 0x3f904189    # 1.127f

    .line 8
    invoke-direct {v0, v1, v2, v3}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 11
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 14
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 16
    move-result-object v0

    .line 19
    const v3, 0x4476bd71

    .line 20
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 23
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 26
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 28
    move-result-object v0

    .line 31
    const v4, 0x3f19999a    # 0.6f

    .line 32
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 35
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 38
    const v5, 0x3b03126f    # 0.002f

    .line 40
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 43
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 46
    iget-object v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mInvalidateUpdateListener:Lmiuix/slidingwidget/widget/SlidingButtonHelper$$ExternalSyntheticLambda0;

    .line 48
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 50
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 53
    const/high16 v7, 0x3f800000    # 1.0f

    .line 55
    invoke-direct {v0, v1, v2, v7}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 57
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 60
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 62
    move-result-object v0

    .line 65
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 66
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 69
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 75
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 78
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 80
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 83
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 85
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 88
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 90
    invoke-direct {v0, v1, v2, v7}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 92
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 95
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 97
    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 101
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 104
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 106
    move-result-object v0

    .line 109
    const v4, 0x3f7d70a4    # 0.99f

    .line 110
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 113
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 116
    const/high16 v5, 0x3b800000    # 0.00390625f

    .line 118
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 120
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 123
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 125
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 128
    const/4 v8, 0x0

    .line 130
    invoke-direct {v0, v1, v2, v8}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 131
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 134
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 136
    move-result-object v0

    .line 139
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 140
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 143
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 145
    move-result-object v0

    .line 148
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 149
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 152
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 154
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 157
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 159
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 162
    const v2, 0x3e19999a    # 0.15f

    .line 164
    iget-object v9, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 167
    invoke-direct {v0, v1, v9, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 169
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 172
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 174
    move-result-object v0

    .line 177
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 178
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 181
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 183
    move-result-object v0

    .line 186
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 187
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 190
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 192
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 195
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 197
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 200
    const v2, 0x3dcccccd    # 0.1f

    .line 202
    invoke-direct {v0, v1, v9, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 205
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 208
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 210
    move-result-object v0

    .line 213
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 214
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 217
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 219
    move-result-object v0

    .line 222
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 223
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 226
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 228
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 231
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 233
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 236
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 238
    invoke-direct {v0, v1, v2, v7}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 240
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 243
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 245
    move-result-object v0

    .line 248
    const v7, 0x43db51ec

    .line 249
    invoke-virtual {v0, v7}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 252
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 255
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 257
    move-result-object v0

    .line 260
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 261
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 264
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 266
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 269
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 271
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 274
    invoke-direct {v0, v1, v2, v8}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 276
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 279
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 281
    move-result-object v0

    .line 284
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 285
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 288
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 290
    move-result-object v0

    .line 293
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 294
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 297
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 299
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 302
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 304
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 307
    const v2, 0x3d4ccccd    # 0.05f

    .line 309
    iget-object v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlphaProperty:Lmiuix/slidingwidget/widget/SlidingButtonHelper$1;

    .line 312
    invoke-direct {v0, v1, v7, v2}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 314
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 317
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 319
    move-result-object v0

    .line 322
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 323
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 326
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 328
    move-result-object v0

    .line 331
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 332
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 335
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 337
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 340
    invoke-virtual {v0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 342
    new-instance v0, Lmiuix/animation/physics/SpringAnimation;

    .line 345
    invoke-direct {v0, v1, v7, v8}, Lmiuix/animation/physics/SpringAnimation;-><init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;F)V

    .line 347
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 350
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 352
    move-result-object v0

    .line 355
    invoke-virtual {v0, v3}, Lmiuix/animation/physics/SpringForce;->setStiffness(F)Lmiuix/animation/physics/SpringForce;

    .line 356
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 359
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->getSpring()Lmiuix/animation/physics/SpringForce;

    .line 361
    move-result-object v0

    .line 364
    invoke-virtual {v0, v4}, Lmiuix/animation/physics/SpringForce;->setDampingRatio(F)Lmiuix/animation/physics/SpringForce;

    .line 365
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 368
    invoke-virtual {v0, v5}, Lmiuix/animation/physics/DynamicAnimation;->setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;

    .line 370
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 373
    invoke-virtual {p0, v6}, Lmiuix/animation/physics/DynamicAnimation;->addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;

    .line 375
    return-void
    .line 378
.end method

.method public final initDrawable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f0815b9    # @drawable/miuix_appcompat_sliding_btn_slider_shadow 'res/drawable-440dpi/miuix_appcompat_sliding_btn_slider_shadow.png'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 11
    move-result-object v1

    .line 14
    iput-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v0

    .line 20
    const v1, 0x7f0815ba    # @drawable/miuix_appcompat_sliding_btn_slider_stroke_light 'res/drawable/miuix_appcompat_sliding_btn_slider_stroke_light.xml'

    .line 21
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    .line 28
    return-void
    .line 30
.end method

.method public final initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f070b5e    # @dimen/miuix_appcompat_sliding_button_frame_corner_radius '36.0dp'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v1

    .line 14
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mCornerRadius:I

    .line 15
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object v1

    .line 20
    const v2, 0x7f070b63    # @dimen/miuix_appcompat_sliding_button_mask_vertical_padding '@dimen/miuix_appcompat_sliding_button_frame_vertical_padding'

    .line 21
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 24
    move-result v1

    .line 27
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginVertical:I

    .line 28
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object v1

    .line 33
    const v2, 0x7f070b62    # @dimen/miuix_appcompat_sliding_button_mask_horizontal_padding '@dimen/miuix_appcompat_sliding_button_frame_horizontal_padding'

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v1

    .line 40
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarginHorizontal:I

    .line 41
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setDrawingCacheEnabled(Z)V

    .line 44
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 47
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 51
    move-result v2

    .line 54
    const/4 v3, 0x2

    .line 55
    div-int/2addr v2, v3

    .line 56
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTapThreshold:I

    .line 57
    const/4 v2, 0x6

    .line 59
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 60
    move-result-object v2

    .line 63
    iput-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 64
    const/4 v2, 0x5

    .line 66
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object v2

    .line 70
    iput-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 73
    move-result-object v2

    .line 76
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 77
    const-string v2, "#FF3482FF"

    .line 80
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 82
    const v2, 0x7f0605c4    # @color/miuix_appcompat_sliding_button_bar_on_light '@color/miuix_color_blue_light_primary_default'

    .line 85
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    .line 88
    move-result p1

    .line 91
    const/4 v2, 0x7

    .line 92
    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 93
    move-result p1

    .line 96
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlidingBarColor:I

    .line 97
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object p1

    .line 102
    const v2, 0x7f070b60    # @dimen/miuix_appcompat_sliding_button_frame_vertical_padding '2.0dp'

    .line 103
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    move-result p1

    .line 109
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 110
    move-result-object v2

    .line 113
    const v4, 0x7f070b5f    # @dimen/miuix_appcompat_sliding_button_frame_horizontal_padding '1.0dp'

    .line 114
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    move-result v2

    .line 120
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 121
    move-result-object v4

    .line 124
    const v5, 0x7f070b61    # @dimen/miuix_appcompat_sliding_button_height '28.0dp'

    .line 125
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    move-result v4

    .line 131
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 132
    move-result-object v5

    .line 135
    const v6, 0x7f070b68    # @dimen/miuix_appcompat_sliding_button_width '47.0dp'

    .line 136
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 139
    move-result v5

    .line 142
    mul-int/2addr v2, v3

    .line 143
    add-int/2addr v2, v5

    .line 144
    iput v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 145
    mul-int/2addr p1, v3

    .line 147
    add-int/2addr p1, v4

    .line 148
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 149
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 151
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 153
    move-result p1

    .line 156
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 157
    move-result p1

    .line 160
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 161
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 163
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 167
    move-result v2

    .line 170
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 171
    move-result p1

    .line 174
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderHeight:I

    .line 175
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 177
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 179
    sub-int/2addr p1, v2

    .line 181
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 182
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 184
    new-instance p1, Landroid/util/TypedValue;

    .line 186
    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 188
    invoke-virtual {p2, v3, p1}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 191
    new-instance v2, Landroid/util/TypedValue;

    .line 194
    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 196
    const/4 v4, 0x3

    .line 199
    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 200
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 203
    move-result-object v3

    .line 206
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 207
    move-result-object p2

    .line 210
    iget v4, p1, Landroid/util/TypedValue;->type:I

    .line 211
    iget v5, v2, Landroid/util/TypedValue;->type:I

    .line 213
    if-ne v4, v5, :cond_0

    .line 215
    iget v4, p1, Landroid/util/TypedValue;->data:I

    .line 217
    iget v5, v2, Landroid/util/TypedValue;->data:I

    .line 219
    if-ne v4, v5, :cond_0

    .line 221
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    .line 223
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    .line 225
    if-ne p1, v2, :cond_0

    .line 227
    move-object p2, v3

    .line 229
    :cond_0
    if-eqz p2, :cond_1

    .line 230
    if-eqz v3, :cond_1

    .line 232
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlidingBarColor:I

    .line 234
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 236
    invoke-virtual {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Lmiuix/smooth/SmoothContainerDrawable2;

    .line 239
    move-result-object p1

    .line 242
    invoke-virtual {p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Lmiuix/smooth/SmoothContainerDrawable2;

    .line 243
    move-result-object v2

    .line 246
    invoke-virtual {p0, p2}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->createMaskDrawable(Landroid/graphics/drawable/Drawable;)Lmiuix/smooth/SmoothContainerDrawable2;

    .line 247
    move-result-object p2

    .line 250
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 251
    iput-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 253
    iput-object p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 255
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    .line 257
    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 259
    iget p2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 262
    iget v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 264
    invoke-virtual {p1, v1, v1, p2, v2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 266
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 269
    iput-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 272
    :cond_1
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->setSliderDrawState()V

    .line 274
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 277
    move-result p1

    .line 280
    if-eqz p1, :cond_2

    .line 281
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 283
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 285
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 287
    :cond_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    .line 290
    move-result-object p1

    .line 293
    const p2, 0x7f070b65    # @dimen/miuix_appcompat_sliding_button_slider_max_offset '2.18dp'

    .line 294
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 297
    move-result p1

    .line 300
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaxTranslateOffset:I

    .line 301
    return-void
    .line 303
.end method

.method public final notifyCheckedChangeListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 6
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    move-result v1

    .line 11
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOnPerformCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 12
    invoke-interface {p0, v0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 6
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isEnabled()Z

    .line 8
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    const/16 v3, 0xff

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/16 v3, 0x7f

    .line 17
    :goto_0
    int-to-float v3, v3

    .line 19
    iget v4, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mExtraAlpha:F

    .line 20
    mul-float/2addr v3, v4

    .line 22
    float-to-int v3, v3

    .line 23
    int-to-float v4, v3

    .line 24
    const/high16 v5, 0x437f0000    # 255.0f

    .line 25
    div-float/2addr v4, v5

    .line 27
    const/high16 v6, 0x3f800000    # 1.0f

    .line 28
    iget v7, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 30
    sub-float/2addr v6, v7

    .line 32
    mul-float/2addr v6, v5

    .line 33
    mul-float/2addr v6, v4

    .line 34
    float-to-int v6, v6

    .line 35
    if-lez v6, :cond_1

    .line 36
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    iget-object v6, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 45
    :cond_1
    iget v6, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBarAlpha:F

    .line 48
    mul-float/2addr v6, v5

    .line 50
    mul-float/2addr v6, v4

    .line 51
    float-to-int v6, v6

    .line 52
    if-lez v6, :cond_2

    .line 53
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 55
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 57
    iget-object v6, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 60
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 62
    :cond_2
    iget v6, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 65
    mul-float/2addr v6, v5

    .line 67
    mul-float/2addr v6, v4

    .line 68
    float-to-int v6, v6

    .line 69
    if-lez v6, :cond_3

    .line 70
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-virtual {v7, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 74
    iget-object v6, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 77
    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    :cond_3
    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 82
    move-result v2

    .line 85
    if-eqz v2, :cond_4

    .line 86
    iget v6, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 88
    iget v7, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 90
    sub-int/2addr v6, v7

    .line 92
    iget v7, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 93
    sub-int/2addr v6, v7

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    iget v6, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 97
    :goto_1
    iget-object v7, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 99
    const/4 v8, 0x0

    .line 101
    aget v8, v7, v8

    .line 102
    float-to-int v9, v8

    .line 104
    add-int/2addr v6, v9

    .line 105
    if-eqz v2, :cond_5

    .line 106
    iget v2, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 108
    iget v9, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 110
    sub-int/2addr v2, v9

    .line 112
    goto :goto_2

    .line 113
    :cond_5
    iget v2, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 114
    iget v9, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 116
    add-int/2addr v2, v9

    .line 118
    :goto_2
    float-to-int v8, v8

    .line 119
    add-int/2addr v2, v8

    .line 120
    iget v8, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 121
    iget v9, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderHeight:I

    .line 123
    sub-int/2addr v8, v9

    .line 125
    div-int/lit8 v8, v8, 0x2

    .line 126
    const/4 v10, 0x1

    .line 128
    aget v7, v7, v10

    .line 129
    float-to-int v7, v7

    .line 131
    add-int/2addr v8, v7

    .line 132
    add-int/2addr v9, v8

    .line 133
    add-int v7, v2, v6

    .line 134
    div-int/lit8 v7, v7, 0x2

    .line 136
    add-int v10, v9, v8

    .line 138
    div-int/lit8 v10, v10, 0x2

    .line 140
    iget v11, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowAlpha:F

    .line 142
    mul-float/2addr v11, v5

    .line 144
    float-to-int v11, v11

    .line 145
    if-nez v11, :cond_6

    .line 146
    goto :goto_4

    .line 148
    :cond_6
    iget-object v12, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    .line 149
    instance-of v13, v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    if-eqz v13, :cond_7

    .line 153
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 155
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 157
    move-result-object v12

    .line 160
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    .line 161
    move-result v12

    .line 164
    iget-object v13, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    .line 165
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 167
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 169
    move-result-object v13

    .line 172
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    .line 173
    move-result v13

    .line 176
    goto :goto_3

    .line 177
    :cond_7
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 178
    move-result v12

    .line 181
    iget-object v13, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    .line 182
    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 184
    move-result v13

    .line 187
    :goto_3
    iget-object v14, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    .line 188
    div-int/lit8 v12, v12, 0x2

    .line 190
    sub-int v15, v7, v12

    .line 192
    div-int/lit8 v13, v13, 0x2

    .line 194
    sub-int v5, v10, v13

    .line 196
    add-int/2addr v12, v7

    .line 198
    add-int/2addr v13, v10

    .line 199
    invoke-virtual {v14, v15, v5, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    iget-object v5, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    .line 203
    invoke-virtual {v5, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 205
    iget-object v5, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadow:Landroid/graphics/drawable/Drawable;

    .line 208
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 210
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 213
    iget v5, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderScale:F

    .line 216
    int-to-float v7, v7

    .line 218
    int-to-float v10, v10

    .line 219
    invoke-virtual {v1, v5, v5, v7, v10}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 220
    iget-boolean v5, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 223
    if-eqz v5, :cond_8

    .line 225
    iget-object v5, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 227
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 229
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {v3, v6, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 234
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 239
    goto :goto_5

    .line 242
    :cond_8
    iget-object v5, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 248
    invoke-virtual {v3, v6, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOff:Landroid/graphics/drawable/Drawable;

    .line 253
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 255
    :goto_5
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    .line 258
    iget v5, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStrokeAlpha:F

    .line 260
    const/high16 v7, 0x437f0000    # 255.0f

    .line 262
    mul-float/2addr v5, v7

    .line 264
    mul-float/2addr v5, v4

    .line 265
    float-to-int v4, v5

    .line 266
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 267
    iget-object v3, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    .line 270
    invoke-virtual {v3, v6, v8, v2, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    iget-object v0, v0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderStroke:Landroid/graphics/drawable/Drawable;

    .line 275
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 277
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 280
    return-void
    .line 283
.end method

.method public final onHoverEvent(Landroid/view/MotionEvent;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    if-eq v0, v1, :cond_4

    .line 10
    const/16 p1, 0x9

    .line 12
    if-eq v0, p1, :cond_2

    .line 14
    const/16 p1, 0xa

    .line 16
    if-eq v0, p1, :cond_0

    .line 18
    goto/16 :goto_2

    .line 20
    :cond_0
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 22
    aput v4, p1, v3

    .line 24
    aput v4, p1, v2

    .line 26
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 28
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 36
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 38
    :cond_1
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 41
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 43
    goto/16 :goto_2

    .line 46
    :cond_2
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 48
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 56
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 58
    :cond_3
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 61
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 63
    goto :goto_2

    .line 66
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 67
    move-result v0

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 71
    move-result p1

    .line 74
    const/4 v1, 0x2

    .line 75
    new-array v5, v1, [I

    .line 76
    iget-object v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 78
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 80
    aget v7, v5, v3

    .line 83
    int-to-float v7, v7

    .line 85
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 86
    move-result v8

    .line 89
    int-to-float v8, v8

    .line 90
    const/high16 v9, 0x3f000000    # 0.5f

    .line 91
    mul-float/2addr v8, v9

    .line 93
    add-float/2addr v8, v7

    .line 94
    aget v5, v5, v2

    .line 95
    int-to-float v5, v5

    .line 97
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 98
    move-result v7

    .line 101
    int-to-float v7, v7

    .line 102
    mul-float/2addr v7, v9

    .line 103
    add-float/2addr v7, v5

    .line 104
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 105
    move-result v5

    .line 108
    if-nez v5, :cond_5

    .line 109
    move v0, v4

    .line 111
    goto :goto_0

    .line 112
    :cond_5
    sub-float/2addr v0, v8

    .line 113
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 114
    move-result v5

    .line 117
    int-to-float v5, v5

    .line 118
    div-float/2addr v0, v5

    .line 119
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 120
    move-result v5

    .line 123
    if-nez v5, :cond_6

    .line 124
    goto :goto_1

    .line 126
    :cond_6
    sub-float/2addr p1, v7

    .line 127
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 128
    move-result v4

    .line 131
    int-to-float v4, v4

    .line 132
    div-float v4, p1, v4

    .line 133
    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 135
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 137
    move-result v0

    .line 140
    const/high16 v5, -0x40800000    # -1.0f

    .line 141
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    .line 143
    move-result v0

    .line 146
    invoke-static {p1, v4}, Ljava/lang/Math;->min(FF)F

    .line 147
    move-result p1

    .line 150
    invoke-static {v5, p1}, Ljava/lang/Math;->max(FF)F

    .line 151
    move-result p1

    .line 154
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaxTranslateOffset:I

    .line 155
    int-to-float v4, v4

    .line 157
    mul-float/2addr v0, v4

    .line 158
    mul-float/2addr p1, v4

    .line 159
    new-array v1, v1, [F

    .line 160
    aput v0, v1, v3

    .line 162
    aput p1, v1, v2

    .line 164
    iput-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTranslateDist:[F

    .line 166
    invoke-virtual {v6}, Landroid/widget/CompoundButton;->invalidate()V

    .line 168
    :goto_2
    return-void
    .line 171
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 6
    move-result v1

    .line 9
    float-to-int v1, v1

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 11
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    iget-object v2, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 16
    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 18
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 24
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 26
    sub-int/2addr v4, v5

    .line 28
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 29
    sub-int/2addr v4, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v4, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 33
    :goto_0
    if-eqz v3, :cond_1

    .line 35
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mWidth:I

    .line 37
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 39
    sub-int/2addr v3, v5

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 43
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderWidth:I

    .line 45
    add-int/2addr v3, v5

    .line 47
    :goto_1
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mHeight:I

    .line 48
    iget-object v6, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 50
    const/4 v7, 0x0

    .line 52
    invoke-virtual {v6, v4, v7, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    const/4 v3, 0x1

    .line 56
    if-eqz v0, :cond_11

    .line 57
    const/4 v4, 0x2

    .line 59
    if-eq v0, v3, :cond_c

    .line 60
    if-eq v0, v4, :cond_5

    .line 62
    const/4 p1, 0x3

    .line 64
    if-eq v0, p1, :cond_2

    .line 65
    goto/16 :goto_8

    .line 67
    :cond_2
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onUnPressedInner()V

    .line 69
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 72
    if-eqz p1, :cond_4

    .line 74
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 76
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 78
    div-int/2addr v0, v4

    .line 80
    if-lt p1, v0, :cond_3

    .line 81
    goto :goto_2

    .line 83
    :cond_3
    move v3, v7

    .line 84
    :goto_2
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 85
    invoke-virtual {p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 87
    :cond_4
    iput-boolean v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 90
    iput-boolean v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 92
    invoke-virtual {v2, v7}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 94
    goto/16 :goto_8

    .line 97
    :cond_5
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 99
    if-eqz p1, :cond_1b

    .line 101
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 103
    sub-int p1, v1, p1

    .line 105
    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    .line 107
    move-result v0

    .line 110
    if-eqz v0, :cond_6

    .line 111
    neg-int p1, p1

    .line 113
    :cond_6
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 114
    add-int/2addr v0, p1

    .line 116
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 117
    if-gez v0, :cond_7

    .line 119
    iput v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 121
    goto :goto_3

    .line 123
    :cond_7
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 124
    if-le v0, p1, :cond_8

    .line 126
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 128
    :cond_8
    :goto_3
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 130
    if-eqz p1, :cond_9

    .line 132
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 134
    if-ne p1, v0, :cond_a

    .line 136
    :cond_9
    move v7, v3

    .line 138
    :cond_a
    if-eqz v7, :cond_b

    .line 139
    iget-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 141
    if-nez p1, :cond_b

    .line 143
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 145
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 147
    invoke-static {v2, p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 149
    :cond_b
    iput-boolean v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 152
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 154
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 156
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->invalidate()V

    .line 158
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 161
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    .line 163
    sub-int/2addr v1, p1

    .line 165
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 166
    move-result p1

    .line 169
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTapThreshold:I

    .line 170
    if-lt p1, v0, :cond_1b

    .line 172
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 174
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    .line 176
    move-result-object p0

    .line 179
    invoke-interface {p0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 180
    goto/16 :goto_8

    .line 183
    :cond_c
    invoke-virtual {v2, v7}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 185
    invoke-virtual {p0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->onUnPressedInner()V

    .line 188
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 191
    if-eqz v0, :cond_f

    .line 193
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 195
    if-nez v0, :cond_d

    .line 197
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 199
    move-result p1

    .line 202
    xor-int/2addr p1, v3

    .line 203
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 204
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 207
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 209
    invoke-static {v2, p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 211
    goto :goto_5

    .line 214
    :cond_d
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 215
    iget v5, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 217
    div-int/2addr v5, v4

    .line 219
    if-lt v0, v5, :cond_e

    .line 220
    goto :goto_4

    .line 222
    :cond_e
    move v3, v7

    .line 223
    :goto_4
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 224
    invoke-virtual {p0, v3}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 226
    invoke-virtual {v6, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 229
    move-result p1

    .line 232
    if-eqz p1, :cond_10

    .line 233
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 235
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 237
    invoke-static {v2, p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 239
    goto :goto_5

    .line 242
    :cond_f
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 243
    move-result p1

    .line 246
    xor-int/2addr p1, v3

    .line 247
    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->animateToState(Z)V

    .line 248
    sget p1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ZAXIS_SWITCH:I

    .line 251
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_SWITCH:I

    .line 253
    invoke-static {v2, p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)V

    .line 255
    :cond_10
    :goto_5
    iput-boolean v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 258
    iput-boolean v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 260
    invoke-virtual {v2, v7}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 262
    goto/16 :goto_8

    .line 265
    :cond_11
    invoke-virtual {v6, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 267
    move-result p1

    .line 270
    if-eqz p1, :cond_1a

    .line 271
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 273
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 275
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 278
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 280
    move-result p1

    .line 283
    if-eqz p1, :cond_12

    .line 284
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 286
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 288
    :cond_12
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 291
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 293
    move-result p1

    .line 296
    if-nez p1, :cond_13

    .line 297
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 299
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 301
    :cond_13
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 304
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 306
    move-result p1

    .line 309
    if-nez p1, :cond_14

    .line 310
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 312
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 314
    :cond_14
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 317
    move-result p1

    .line 320
    if-nez p1, :cond_17

    .line 321
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 323
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 325
    move-result p1

    .line 328
    if-eqz p1, :cond_15

    .line 329
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 331
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 333
    :cond_15
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 336
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 338
    move-result p1

    .line 341
    if-nez p1, :cond_16

    .line 342
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 344
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 346
    :cond_16
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 349
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 351
    move-result p1

    .line 354
    if-nez p1, :cond_17

    .line 355
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 357
    invoke-virtual {p1}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 359
    :cond_17
    iget p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 362
    if-lez p1, :cond_19

    .line 364
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 366
    if-lt p1, v0, :cond_18

    .line 368
    goto :goto_6

    .line 370
    :cond_18
    move v3, v7

    .line 371
    :cond_19
    :goto_6
    iput-boolean v3, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mIsSliderEdgeReached:Z

    .line 372
    goto :goto_7

    .line 374
    :cond_1a
    iput-boolean v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mTracking:Z

    .line 375
    :goto_7
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mLastX:I

    .line 377
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mOriginalTouchPointX:I

    .line 379
    iput-boolean v7, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoved:Z

    .line 381
    :cond_1b
    :goto_8
    return-void
    .line 383
.end method

.method public final onUnPressedInner()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 2
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 10
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 12
    :cond_0
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 15
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderUnPressedAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 23
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 25
    :cond_1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 28
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 36
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 38
    :cond_2
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 41
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 43
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderShadowHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 49
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 51
    :cond_3
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 54
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 56
    move-result v0

    .line 59
    if-eqz v0, :cond_4

    .line 60
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 62
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 64
    :cond_4
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 67
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 69
    move-result v0

    .line 72
    if-nez v0, :cond_7

    .line 73
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 75
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 83
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 85
    :cond_5
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 88
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 90
    move-result v0

    .line 93
    if-nez v0, :cond_6

    .line 94
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mUnMarkedPressedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 96
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 98
    :cond_6
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 101
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 103
    move-result v0

    .line 106
    if-nez v0, :cond_7

    .line 107
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mStokeAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 109
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 111
    :cond_7
    return-void
    .line 114
.end method

.method public final setChecked(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 2
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffsetTemp:I

    .line 4
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 6
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlphaTemp:I

    .line 8
    iget v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 10
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlphaTemp:F

    .line 12
    iget-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 14
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimCheckedTemp:Z

    .line 16
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mParamCached:Z

    .line 19
    iput-boolean p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mAnimChecked:Z

    .line 21
    const/4 v0, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    iget v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderPositionEnd:I

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    move v1, v0

    .line 29
    :goto_0
    iput v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOffset:I

    .line 30
    if-eqz p1, :cond_1

    .line 32
    const/16 v0, 0xff

    .line 34
    :cond_1
    iput v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOnAlpha:I

    .line 36
    if-eqz p1, :cond_2

    .line 38
    const/high16 p1, 0x3f800000    # 1.0f

    .line 40
    goto :goto_1

    .line 42
    :cond_2
    const/4 p1, 0x0

    .line 43
    :goto_1
    iput p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBarAlpha:F

    .line 44
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 46
    if-eqz p1, :cond_3

    .line 48
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 50
    move-result p1

    .line 53
    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderMoveAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 56
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 58
    :cond_3
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 61
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 63
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaHideAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 69
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 71
    :cond_4
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 74
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 76
    move-result p1

    .line 79
    if-eqz p1, :cond_5

    .line 80
    iget-object p1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMarkedAlphaShowAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 82
    invoke-virtual {p1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 84
    :cond_5
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 87
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    .line 89
    return-void
    .line 92
.end method

.method public final setLayerType(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 8
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 10
    :cond_0
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 13
    instance-of v1, v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 19
    invoke-virtual {v0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 21
    :cond_1
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mMaskUnCheckedPressedSlideBar:Landroid/graphics/drawable/Drawable;

    .line 24
    instance-of v0, p0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 26
    if-eqz v0, :cond_2

    .line 28
    check-cast p0, Lmiuix/smooth/SmoothContainerDrawable2;

    .line 30
    invoke-virtual {p0, p1}, Lmiuix/smooth/SmoothContainerDrawable2;->setLayerType(I)V

    .line 32
    :cond_2
    return-void
    .line 35
.end method

.method public final setParentClipChildren()V
    .locals 1

    .line 1
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object p0

    .line 7
    instance-of v0, p0, Landroid/view/ViewGroup;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Landroid/view/ViewGroup;

    .line 12
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public final setSliderDrawState()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSliderOn:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mView:Landroid/widget/CompoundButton;

    .line 6
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    .line 8
    move-result-object v2

    .line 11
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 12
    iget-object p0, p0, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->mSlideBar:Landroid/graphics/drawable/StateListDrawable;

    .line 15
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 21
    :cond_0
    return-void
    .line 24
.end method
