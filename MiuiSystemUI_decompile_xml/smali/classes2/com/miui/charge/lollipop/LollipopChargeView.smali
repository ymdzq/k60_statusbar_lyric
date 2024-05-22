.class public Lcom/miui/charge/lollipop/LollipopChargeView;
.super Lcom/miui/charge/container/IChargeView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBottomLightDrawable:Landroid/graphics/drawable/Drawable;

.field public mBottomLightHeight:I

.field public mBottomLightImage:Landroid/widget/ImageView;

.field public mBottomLightWidth:I

.field public mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

.field public mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

.field public mInnerCircleAnimator:Landroid/animation/ObjectAnimator;

.field public mInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

.field public mInnerCircleSize:I

.field public mInnerCircleView:Landroid/widget/ImageView;

.field public mInnerParticleCircleSize:I

.field public mInnerParticleDrawable:Landroid/graphics/drawable/Drawable;

.field public mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

.field public mParticleCircleAnimator:Landroid/animation/ObjectAnimator;

.field public mParticleCircleView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/lollipop/LollipopChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/lollipop/LollipopChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/charge/container/IChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/charge/lollipop/LollipopChargeView;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final init(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/miui/charge/container/IChargeView;->init(Landroid/content/Context;)V

    .line 2
    const v0, 0x7f080be6    # @drawable/charge_animation_wired_rotate_circle_icon 'res/drawable-nodpi/charge_animation_wired_rotate_circle_icon.webp'

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    const v0, 0x7f080be0    # @drawable/charge_animation_particle_circle_icon 'res/drawable-nodpi/charge_animation_particle_circle_icon.webp'

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerParticleDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    const v0, 0x7f080bdc    # @drawable/charge_animation_bottom_light_icon 'res/drawable-nodpi/charge_animation_bottom_light_icon.webp'

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    const/4 v1, -0x2

    .line 34
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 35
    const/16 v2, 0x51

    .line 38
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 40
    new-instance v3, Lcom/miui/charge/lollipop/OutlineView;

    .line 42
    invoke-direct {v3, p1}, Lcom/miui/charge/lollipop/OutlineView;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object v3, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

    .line 47
    invoke-virtual {p0, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 52
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 54
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 57
    new-instance v3, Lcom/miui/charge/lollipop/FireworksView;

    .line 59
    invoke-direct {v3, p1}, Lcom/miui/charge/lollipop/FireworksView;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object v3, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 64
    invoke-virtual {p0, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Landroid/widget/ImageView;

    .line 69
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 74
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 78
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 81
    iget-object v3, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    iget v3, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleSize:I

    .line 90
    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    const/16 v3, 0x11

    .line 95
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    iget-object v4, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 106
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 109
    sget-object v4, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 111
    const/4 v5, 0x2

    .line 113
    new-array v6, v5, [F

    .line 114
    fill-array-data v6, :array_0

    .line 116
    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 119
    move-result-object v0

    .line 122
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 123
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    .line 125
    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 127
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 130
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 133
    const/4 v4, -0x1

    .line 135
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 136
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 139
    const-wide/16 v6, 0x1770

    .line 141
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    new-instance v0, Landroid/widget/ImageView;

    .line 146
    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 148
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 151
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 153
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 155
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 158
    iget-object v6, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerParticleDrawable:Landroid/graphics/drawable/Drawable;

    .line 160
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 165
    iget v6, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerParticleCircleSize:I

    .line 167
    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 169
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 172
    iget-object v6, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 174
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 179
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 184
    sget-object v6, Landroid/view/View;->ROTATION:Landroid/util/Property;

    .line 186
    new-array v5, v5, [F

    .line 188
    fill-array-data v5, :array_1

    .line 190
    invoke-static {v0, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 193
    move-result-object v0

    .line 196
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 197
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    .line 199
    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 201
    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 204
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 207
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 209
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 212
    const-wide/16 v4, 0x3e8

    .line 214
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 216
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 219
    iget v4, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightWidth:I

    .line 221
    iget v5, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightHeight:I

    .line 223
    invoke-direct {v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 225
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 228
    new-instance v2, Landroid/widget/ImageView;

    .line 230
    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 232
    iput-object v2, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 235
    iget-object v4, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 239
    iget-object v2, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 242
    invoke-virtual {p0, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 247
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 249
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 252
    new-instance v1, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 254
    invoke-direct {v1, p1}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;-><init>(Landroid/content/Context;)V

    .line 256
    iput-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 259
    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    const/4 p1, 0x1

    .line 264
    invoke-virtual {p0, p1}, Lcom/miui/charge/lollipop/LollipopChargeView;->setComponentTransparent(Z)V

    .line 265
    return-void

    .line 268
    nop

    .line 269
    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data

    .line 270
    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
    .line 278
.end method

.method public final initAnimator()V
    .locals 4

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
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "initAnimator mWireState="

    .line 34
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget v2, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    const-string v2, "LollipopChargeView"

    .line 48
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 53
    const/16 v2, 0xa

    .line 55
    if-eq v1, v2, :cond_1

    .line 57
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 59
    if-eqz v2, :cond_0

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    const/16 v2, 0xb

    .line 64
    if-ne v1, v2, :cond_2

    .line 66
    sget-object v1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 68
    const/4 v2, 0x2

    .line 70
    new-array v2, v2, [F

    .line 71
    fill-array-data v2, :array_0

    .line 73
    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 76
    move-result-object v1

    .line 79
    iget-object v2, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 80
    filled-new-array {v1}, [Landroid/animation/PropertyValuesHolder;

    .line 82
    move-result-object v1

    .line 85
    invoke-static {v2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 86
    move-result-object v1

    .line 89
    const-wide/16 v2, 0x3e8

    .line 90
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 92
    move-result-object v1

    .line 95
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 96
    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 98
    move-result-object p0

    .line 101
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 102
    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView;->mEnterAnimatorSet:Landroid/animation/AnimatorSet;

    .line 106
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 108
    :cond_2
    :goto_1
    return-void

    .line 111
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 112
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
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 11
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 14
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 16
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 19
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 21
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 24
    const/16 v1, 0xa

    .line 26
    if-eq v0, v1, :cond_1

    .line 28
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 30
    if-eqz v1, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/16 v1, 0xb

    .line 35
    if-ne v0, v1, :cond_2

    .line 37
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 41
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 46
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 54
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 56
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 61
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 66
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 69
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 71
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

    .line 74
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 76
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 79
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 81
    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 85
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 87
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 90
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 92
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 95
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 97
    :cond_2
    :goto_1
    return-void
    .line 100
.end method

.method public final setComponentTransparent(Z)V
    .locals 3

    .line 1
    const-string/jumbo v0, "setComponentTransparent: "

    .line 2
    const-string v1, " mWireState="

    .line 5
    invoke-static {v0, p1, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    move-result-object v0

    .line 10
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 11
    const-string v2, "LollipopChargeView"

    .line 13
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 15
    const/4 v0, 0x0

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 21
    iget-object p1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 24
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 26
    iget-object p1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 31
    iget-object p1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 34
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 36
    iget-object p1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 41
    iget-object p1, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 46
    iget-object p1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 51
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 56
    goto :goto_1

    .line 59
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 62
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 65
    const/16 v2, 0xa

    .line 67
    if-eq v1, v2, :cond_2

    .line 69
    sget-boolean v2, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 71
    if-eqz v2, :cond_1

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    const/16 v2, 0xb

    .line 76
    if-ne v1, v2, :cond_3

    .line 78
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 82
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 87
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 90
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 92
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

    .line 95
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 97
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 100
    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 102
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 107
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 110
    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setAlpha(F)V

    .line 112
    goto :goto_1

    .line 115
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 116
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 118
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 123
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 126
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 128
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

    .line 131
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 133
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 136
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 138
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 141
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 143
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 146
    invoke-virtual {p0, p1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 148
    :cond_3
    :goto_1
    return-void
    .line 151
.end method

.method public final setViewState()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setViewState mWireState="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    const-string v1, "LollipopChargeView"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 24
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 27
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 32
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 37
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 42
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 45
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 47
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 52
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 57
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 67
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleX(F)V

    .line 72
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setScaleY(F)V

    .line 77
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 80
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 82
    return-void
    .line 85
.end method

.method public final startAnimationOnChildView()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "startAnimationOnChildView: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 10
    const-string v2, "LollipopChargeView"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 17
    const/16 v1, 0xa

    .line 19
    if-eq v0, v1, :cond_1

    .line 21
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 23
    if-eqz v1, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    const/16 v1, 0xb

    .line 28
    if-ne v0, v1, :cond_2

    .line 30
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 32
    const/4 v1, 0x1

    .line 34
    iput-boolean v1, v0, Lcom/miui/charge/lollipop/FireworksView;->mIsAnimationRuning:Z

    .line 35
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 37
    move-result-object v1

    .line 40
    iget-object v2, v0, Lcom/miui/charge/lollipop/FireworksView;->mFrameCallback:Lcom/miui/charge/lollipop/FireworksView$1;

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 43
    iget-object v1, v0, Lcom/miui/charge/lollipop/FireworksView;->mFireRunnable:Lcom/miui/charge/lollipop/FireworksView$2;

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 48
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 51
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 53
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 56
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 58
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 62
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->startAnimation()V

    .line 64
    :cond_2
    :goto_1
    return-void
    .line 67
.end method

.method public final startDismiss(Ljava/lang/String;)V
    .locals 14

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
    sget-object v8, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 57
    new-array v9, v1, [F

    .line 59
    iget-object v10, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 61
    invoke-virtual {v10}, Landroid/view/ViewGroup;->getScaleX()F

    .line 63
    move-result v10

    .line 66
    aput v10, v9, v4

    .line 67
    aput v5, v9, v3

    .line 69
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 71
    move-result-object v8

    .line 74
    sget-object v9, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 75
    new-array v10, v1, [F

    .line 77
    iget-object v11, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 79
    invoke-virtual {v11}, Landroid/view/ViewGroup;->getScaleY()F

    .line 81
    move-result v11

    .line 84
    aput v11, v10, v4

    .line 85
    aput v5, v10, v3

    .line 87
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 89
    move-result-object v9

    .line 92
    iget-object v10, p0, Lcom/miui/charge/container/IChargeView;->mContentContainer:Landroid/view/ViewGroup;

    .line 93
    filled-new-array {v2, v8, v9}, [Landroid/animation/PropertyValuesHolder;

    .line 95
    move-result-object v2

    .line 98
    invoke-static {v10, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 99
    move-result-object v2

    .line 102
    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 103
    move-result-object v2

    .line 106
    const-string v8, ",startDismiss="

    .line 107
    const-string v9, " ,mWireState="

    .line 109
    invoke-static {v8, p1, v9}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    move-result-object v8

    .line 114
    iget v9, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v8

    .line 123
    const-string v9, "LollipopChargeView"

    .line 124
    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v8, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 129
    const/16 v9, 0xb

    .line 131
    if-ne v8, v9, :cond_0

    .line 133
    sget-object v8, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 135
    new-array v9, v1, [F

    .line 137
    iget-object v10, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

    .line 139
    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    .line 141
    move-result v10

    .line 144
    aput v10, v9, v4

    .line 145
    aput v5, v9, v3

    .line 147
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 149
    move-result-object v8

    .line 152
    iget-object v9, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mOutlineView:Lcom/miui/charge/lollipop/OutlineView;

    .line 153
    filled-new-array {v8}, [Landroid/animation/PropertyValuesHolder;

    .line 155
    move-result-object v8

    .line 158
    invoke-static {v9, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 159
    move-result-object v8

    .line 162
    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 163
    move-result-object v9

    .line 166
    sget-object v8, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 167
    new-array v10, v1, [F

    .line 169
    iget-object v11, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 171
    invoke-virtual {v11}, Landroid/widget/ImageView;->getAlpha()F

    .line 173
    move-result v11

    .line 176
    aput v11, v10, v4

    .line 177
    aput v5, v10, v3

    .line 179
    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 181
    move-result-object v8

    .line 184
    sget-object v10, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 185
    new-array v11, v1, [F

    .line 187
    iget-object v12, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 189
    invoke-virtual {v12}, Landroid/widget/ImageView;->getScaleX()F

    .line 191
    move-result v12

    .line 194
    aput v12, v11, v4

    .line 195
    aput v5, v11, v3

    .line 197
    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 199
    move-result-object v10

    .line 202
    sget-object v11, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 203
    new-array v12, v1, [F

    .line 205
    iget-object v13, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 207
    invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleY()F

    .line 209
    move-result v13

    .line 212
    aput v13, v12, v4

    .line 213
    aput v5, v12, v3

    .line 215
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 217
    move-result-object v11

    .line 220
    iget-object v12, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 221
    filled-new-array {v8, v10, v11}, [Landroid/animation/PropertyValuesHolder;

    .line 223
    move-result-object v8

    .line 226
    invoke-static {v12, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 227
    move-result-object v8

    .line 230
    invoke-virtual {v8, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    move-result-object v10

    .line 234
    sget-object v8, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 235
    new-array v11, v1, [F

    .line 237
    iget-object v12, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 239
    invoke-virtual {v12}, Landroid/widget/ImageView;->getAlpha()F

    .line 241
    move-result v12

    .line 244
    aput v12, v11, v4

    .line 245
    aput v5, v11, v3

    .line 247
    invoke-static {v8, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 249
    move-result-object v8

    .line 252
    sget-object v11, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 253
    new-array v12, v1, [F

    .line 255
    iget-object v13, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 257
    invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleX()F

    .line 259
    move-result v13

    .line 262
    aput v13, v12, v4

    .line 263
    aput v5, v12, v3

    .line 265
    invoke-static {v11, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 267
    move-result-object v11

    .line 270
    sget-object v12, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 271
    new-array v1, v1, [F

    .line 273
    iget-object v13, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 275
    invoke-virtual {v13}, Landroid/widget/ImageView;->getScaleY()F

    .line 277
    move-result v13

    .line 280
    aput v13, v1, v4

    .line 281
    aput v5, v1, v3

    .line 283
    invoke-static {v12, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 285
    move-result-object v1

    .line 288
    iget-object v12, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 289
    filled-new-array {v8, v11, v1}, [Landroid/animation/PropertyValuesHolder;

    .line 291
    move-result-object v1

    .line 294
    invoke-static {v12, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 295
    move-result-object v1

    .line 298
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 299
    move-result-object v11

    .line 302
    sget-object v1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 303
    const/4 v8, 0x2

    .line 305
    new-array v12, v8, [F

    .line 306
    iget-object v13, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 308
    invoke-virtual {v13}, Landroid/view/View;->getAlpha()F

    .line 310
    move-result v13

    .line 313
    aput v13, v12, v4

    .line 314
    aput v5, v12, v3

    .line 316
    invoke-static {v1, v12}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 318
    move-result-object v1

    .line 321
    iget-object v12, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 322
    filled-new-array {v1}, [Landroid/animation/PropertyValuesHolder;

    .line 324
    move-result-object v1

    .line 327
    invoke-static {v12, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 328
    move-result-object v1

    .line 331
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 332
    move-result-object v12

    .line 335
    sget-object v1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 336
    new-array v8, v8, [F

    .line 338
    iget-object v13, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 340
    invoke-virtual {v13}, Landroid/widget/ImageView;->getAlpha()F

    .line 342
    move-result v13

    .line 345
    aput v13, v8, v4

    .line 346
    aput v5, v8, v3

    .line 348
    invoke-static {v1, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 350
    move-result-object v1

    .line 353
    iget-object v3, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 354
    filled-new-array {v1}, [Landroid/animation/PropertyValuesHolder;

    .line 356
    move-result-object v1

    .line 359
    invoke-static {v3, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 360
    move-result-object v1

    .line 363
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 364
    move-result-object v13

    .line 367
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 368
    move-object v8, v2

    .line 370
    filled-new-array/range {v8 .. v13}, [Landroid/animation/Animator;

    .line 371
    move-result-object v3

    .line 374
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 375
    goto :goto_0

    .line 378
    :cond_0
    const/16 v1, 0xa

    .line 379
    if-ne v8, v1, :cond_1

    .line 381
    sget-object v1, Landroid/widget/FrameLayout;->ALPHA:Landroid/util/Property;

    .line 383
    const/4 v8, 0x2

    .line 385
    new-array v9, v8, [F

    .line 386
    iget-object v10, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 388
    invoke-virtual {v10}, Landroid/view/TextureView;->getAlpha()F

    .line 390
    move-result v10

    .line 393
    aput v10, v9, v4

    .line 394
    aput v5, v9, v3

    .line 396
    invoke-static {v1, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 398
    move-result-object v1

    .line 401
    sget-object v9, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    .line 402
    new-array v10, v8, [F

    .line 404
    iget-object v11, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 406
    invoke-virtual {v11}, Landroid/view/TextureView;->getScaleX()F

    .line 408
    move-result v11

    .line 411
    aput v11, v10, v4

    .line 412
    aput v5, v10, v3

    .line 414
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 416
    move-result-object v9

    .line 419
    sget-object v10, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    .line 420
    new-array v8, v8, [F

    .line 422
    iget-object v11, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 424
    invoke-virtual {v11}, Landroid/view/TextureView;->getScaleY()F

    .line 426
    move-result v11

    .line 429
    aput v11, v8, v4

    .line 430
    aput v5, v8, v3

    .line 432
    invoke-static {v10, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    .line 434
    move-result-object v3

    .line 437
    iget-object v4, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 438
    filled-new-array {v1, v9, v3}, [Landroid/animation/PropertyValuesHolder;

    .line 440
    move-result-object v1

    .line 443
    invoke-static {v4, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    .line 444
    move-result-object v1

    .line 447
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 448
    move-result-object v1

    .line 451
    iget-object v3, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 452
    filled-new-array {v2, v1}, [Landroid/animation/Animator;

    .line 454
    move-result-object v1

    .line 457
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 458
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 461
    iget-object v3, p0, Lcom/miui/charge/container/IChargeView;->mQuartOutInterpolator:Lcom/miui/maml/animation/interpolater/QuartEaseOutInterpolater;

    .line 463
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    const-string v1, "dismiss_for_timeout"

    .line 468
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 470
    move-result p1

    .line 473
    if-nez p1, :cond_2

    .line 474
    iget-object p1, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 476
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 478
    move-result-object p1

    .line 481
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 482
    :cond_2
    iget-object p0, p0, Lcom/miui/charge/container/IChargeView;->mDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 485
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    .line 487
    return-void
    .line 490
.end method

.method public final stopChildAnimation()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "stopChildAnimation: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget v1, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 10
    const-string v2, "LollipopChargeView"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 14
    iget v0, p0, Lcom/miui/charge/container/IChargeView;->mWireState:I

    .line 17
    const/16 v1, 0xb

    .line 19
    if-ne v0, v1, :cond_0

    .line 21
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mFireworksView:Lcom/miui/charge/lollipop/FireworksView;

    .line 23
    const/4 v1, 0x0

    .line 25
    iput-boolean v1, v0, Lcom/miui/charge/lollipop/FireworksView;->mIsAnimationRuning:Z

    .line 26
    iget-object v1, v0, Lcom/miui/charge/lollipop/FireworksView;->mFireRunnable:Lcom/miui/charge/lollipop/FireworksView$2;

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 30
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 33
    move-result-object v1

    .line 36
    iget-object v0, v0, Lcom/miui/charge/lollipop/FireworksView;->mFrameCallback:Lcom/miui/charge/lollipop/FireworksView$1;

    .line 37
    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 39
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 42
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 44
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleAnimator:Landroid/animation/ObjectAnimator;

    .line 47
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    const/16 v1, 0xa

    .line 53
    if-ne v0, v1, :cond_1

    .line 55
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mCircleRapidView:Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;

    .line 57
    invoke-virtual {p0}, Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;->stopAnimation()V

    .line 59
    :cond_1
    :goto_0
    return-void
    .line 62
.end method

.method public final updateLayoutParamForScreenSizeChange()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    iget v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleSize:I

    .line 10
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 12
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 14
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mParticleCircleView:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 22
    iget v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerParticleCircleSize:I

    .line 24
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 26
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 28
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightImage:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 36
    iget v1, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightWidth:I

    .line 38
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 40
    iget p0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightHeight:I

    .line 42
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 44
    return-void
    .line 46
.end method

.method public final updateSizeForScreenSizeChange()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/charge/container/IChargeView;->mScreenSize:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 8
    move-result v0

    .line 11
    int-to-float v0, v0

    .line 12
    const/high16 v1, 0x3f800000    # 1.0f

    .line 13
    mul-float/2addr v1, v0

    .line 15
    const/high16 v2, 0x44870000    # 1080.0f

    .line 16
    div-float/2addr v1, v2

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 19
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->isLiteChargeAnimationPad()Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    const/high16 v1, 0x3f000000    # 0.5f

    .line 28
    mul-float/2addr v0, v1

    .line 30
    div-float v1, v0, v2

    .line 31
    :cond_0
    const v0, 0x44258000    # 662.0f

    .line 33
    mul-float/2addr v0, v1

    .line 36
    float-to-int v0, v0

    .line 37
    iput v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerCircleSize:I

    .line 38
    const/high16 v0, 0x44190000    # 612.0f

    .line 40
    mul-float/2addr v0, v1

    .line 42
    float-to-int v0, v0

    .line 43
    iput v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mInnerParticleCircleSize:I

    .line 44
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 46
    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 50
    move-result v0

    .line 53
    int-to-float v0, v0

    .line 54
    mul-float/2addr v0, v1

    .line 55
    float-to-int v0, v0

    .line 56
    iput v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightWidth:I

    .line 57
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 61
    move-result v0

    .line 64
    int-to-float v0, v0

    .line 65
    mul-float/2addr v1, v0

    .line 66
    float-to-int v0, v1

    .line 67
    iput v0, p0, Lcom/miui/charge/lollipop/LollipopChargeView;->mBottomLightHeight:I

    .line 68
    :cond_1
    return-void
    .line 70
.end method
