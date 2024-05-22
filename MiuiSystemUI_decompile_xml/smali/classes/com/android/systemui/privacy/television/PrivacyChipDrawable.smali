.class public Lcom/android/systemui/privacy/television/PrivacyChipDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBgHeight:I

.field public final mBgPaint:Landroid/graphics/Paint;

.field public final mBgRadius:I

.field public final mBgRect:Landroid/graphics/Rect;

.field public final mBgWidth:I

.field public final mChipPaint:Landroid/graphics/Paint;

.field public final mCollapse:Landroid/animation/Animator;

.field public mCollapseProgress:F

.field public final mCollapseToDot:Z

.field public final mCollapsedChipRadius:F

.field public final mDotSize:I

.field public final mExpand:Landroid/animation/Animator;

.field public final mExpandedChipRadius:F

.field public mIsExpanded:Z

.field public final mLayoutDirection:I

.field public final mPath:Landroid/graphics/Path;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpRectF:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(IZLandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 17
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 24
    new-instance v0, Landroid/graphics/Path;

    .line 26
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mPath:Landroid/graphics/Path;

    .line 31
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mIsExpanded:Z

    .line 34
    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 37
    iput-boolean p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseToDot:Z

    .line 39
    new-instance p2, Landroid/graphics/Paint;

    .line 41
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    .line 46
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 48
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    invoke-virtual {p3, p1}, Landroid/content/Context;->getColor(I)I

    .line 53
    move-result p1

    .line 56
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 60
    new-instance p1, Landroid/graphics/Paint;

    .line 63
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 68
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 70
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    const p2, 0x7f060782    # @color/privacy_chip_dot_bg_tint '#66000000'

    .line 75
    invoke-virtual {p3, p2}, Landroid/content/Context;->getColor(I)I

    .line 78
    move-result p2

    .line 81
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 85
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 92
    move-result-object p2

    .line 95
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 96
    move-result p2

    .line 99
    iput p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mLayoutDirection:I

    .line 100
    const p2, 0x7f070eab    # @dimen/privacy_chip_dot_bg_width '24.0dp'

    .line 102
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 105
    move-result p2

    .line 108
    iput p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    .line 109
    const p2, 0x7f070ea9    # @dimen/privacy_chip_dot_bg_height '18.0dp'

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 114
    move-result p2

    .line 117
    iput p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    .line 118
    const p2, 0x7f070eaa    # @dimen/privacy_chip_dot_bg_radius '9.0dp'

    .line 120
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 123
    move-result p2

    .line 126
    iput p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    .line 127
    const p2, 0x7f070ead    # @dimen/privacy_chip_dot_size '8.0dp'

    .line 129
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 132
    move-result p2

    .line 135
    iput p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotSize:I

    .line 136
    const p2, 0x7f070eb3    # @dimen/privacy_chip_radius '12.0dp'

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 141
    move-result p2

    .line 144
    int-to-float p2, p2

    .line 145
    iput p2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpandedChipRadius:F

    .line 146
    const p2, 0x7f070eac    # @dimen/privacy_chip_dot_radius '4.0dp'

    .line 148
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    move-result p1

    .line 154
    int-to-float p1, p1

    .line 155
    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapsedChipRadius:F

    .line 156
    const p1, 0x7f010234    # @anim/tv_privacy_chip_expand 'res/anim/tv_privacy_chip_expand.xml'

    .line 158
    invoke-static {p3, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 161
    move-result-object p1

    .line 164
    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpand:Landroid/animation/Animator;

    .line 165
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 167
    const p1, 0x7f010233    # @anim/tv_privacy_chip_collapse 'res/anim/tv_privacy_chip_collapse.xml'

    .line 170
    invoke-static {p3, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 173
    move-result-object p1

    .line 176
    iput-object p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapse:Landroid/animation/Animator;

    .line 177
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 179
    return-void
    .line 182
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpl-float v0, v0, v1

    .line 5
    if-lez v0, :cond_0

    .line 7
    iget-object v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 11
    move-result-object v4

    .line 14
    const v1, 0x800005

    .line 15
    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    .line 18
    iget v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    .line 20
    iget v6, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mLayoutDirection:I

    .line 22
    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 29
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 34
    iget v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    .line 36
    int-to-float v1, v1

    .line 38
    iget-object v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 44
    invoke-virtual {p0, v0}, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->getForegroundBounds(Landroid/graphics/RectF;)V

    .line 46
    iget v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mExpandedChipRadius:F

    .line 49
    iget-boolean v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseToDot:Z

    .line 51
    if-eqz v1, :cond_1

    .line 53
    iget v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapsedChipRadius:F

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    iget v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRadius:I

    .line 58
    int-to-float v1, v1

    .line 60
    :goto_0
    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 61
    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 63
    move-result v0

    .line 66
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRectF:Landroid/graphics/RectF;

    .line 67
    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p1, v1, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 71
    return-void
    .line 74
.end method

.method public getCollapseProgress()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 2
    return p0
    .line 4
.end method

.method public final getForegroundBounds(Landroid/graphics/RectF;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v2

    .line 11
    iget-object v7, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v6

    .line 17
    const v3, 0x800005

    .line 18
    iget v4, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgWidth:I

    .line 21
    iget v5, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgHeight:I

    .line 23
    iget v8, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mLayoutDirection:I

    .line 25
    invoke-static/range {v3 .. v8}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 27
    iget-boolean v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseToDot:Z

    .line 30
    if-eqz v3, :cond_0

    .line 32
    iget v2, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mDotSize:I

    .line 34
    iget-object v3, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 36
    const/16 v4, 0x11

    .line 38
    invoke-static {v4, v2, v2, v3, v1}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_0
    iget v3, v2, Landroid/graphics/Rect;->left:I

    .line 44
    iget-object v4, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgRect:Landroid/graphics/Rect;

    .line 46
    iget v5, v4, Landroid/graphics/Rect;->top:I

    .line 48
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 50
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 52
    invoke-virtual {v1, v3, v5, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 57
    iget p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 59
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 61
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 63
    invoke-static {v2, v3, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 65
    move-result v2

    .line 68
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 69
    iget v4, v1, Landroid/graphics/Rect;->top:I

    .line 71
    invoke-static {v3, v4, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 73
    move-result v3

    .line 76
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 77
    iget v5, v1, Landroid/graphics/Rect;->right:I

    .line 79
    invoke-static {v4, v5, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 81
    move-result v4

    .line 84
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 85
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 87
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(IIF)F

    .line 89
    move-result p0

    .line 92
    invoke-virtual {p1, v2, v3, v4, p0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 93
    return-void
    .line 96
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 5
    return-void
    .line 8
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mChipPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mBgPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    return-void
    .line 12
.end method

.method public setCollapseProgress(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/privacy/television/PrivacyChipDrawable;->mCollapseProgress:F

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    return-void
    .line 7
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
