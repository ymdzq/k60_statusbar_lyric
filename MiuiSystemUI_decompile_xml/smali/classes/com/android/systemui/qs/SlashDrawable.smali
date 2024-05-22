.class public Lcom/android/systemui/qs/SlashDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAnimationEnabled:Z

.field public mCurrentSlashLength:F

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mRotation:F

.field public final mSlashLengthProp:Lcom/android/systemui/qs/SlashDrawable$1;

.field public final mSlashRect:Landroid/graphics/RectF;

.field public mSlashed:Z

.field public mTintList:Landroid/content/res/ColorStateList;

.field public mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Path;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 20
    const/4 v2, 0x0

    .line 22
    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    .line 26
    iput-boolean v1, p0, Lcom/android/systemui/qs/SlashDrawable;->mAnimationEnabled:Z

    .line 28
    new-instance v0, Lcom/android/systemui/qs/SlashDrawable$1;

    .line 30
    invoke-direct {v0}, Lcom/android/systemui/qs/SlashDrawable$1;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashLengthProp:Lcom/android/systemui/qs/SlashDrawable$1;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
    .line 39
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result v2

    .line 25
    int-to-float v3, v1

    .line 26
    const/high16 v4, 0x3f800000    # 1.0f

    .line 27
    mul-float v5, v4, v3

    .line 29
    int-to-float v6, v2

    .line 31
    mul-float/2addr v4, v6

    .line 32
    const v7, 0x3ecf96ed

    .line 33
    mul-float/2addr v7, v3

    .line 36
    const v8, -0x424a2cd0

    .line 37
    mul-float v9, v8, v6

    .line 40
    const v10, 0x3ef6cf78

    .line 42
    mul-float/2addr v10, v3

    .line 45
    iget v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    .line 46
    add-float/2addr v3, v8

    .line 48
    mul-float/2addr v3, v6

    .line 49
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    .line 50
    iput v7, v6, Landroid/graphics/RectF;->left:F

    .line 52
    iput v9, v6, Landroid/graphics/RectF;->top:F

    .line 54
    iput v10, v6, Landroid/graphics/RectF;->right:F

    .line 56
    iput v3, v6, Landroid/graphics/RectF;->bottom:F

    .line 58
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 60
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 62
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 65
    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    .line 67
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 69
    invoke-virtual {v3, v6, v5, v4, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 71
    iget v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    .line 74
    const/high16 v6, -0x3dcc0000    # -45.0f

    .line 76
    add-float/2addr v3, v6

    .line 78
    div-int/lit8 v1, v1, 0x2

    .line 79
    int-to-float v1, v1

    .line 81
    div-int/lit8 v2, v2, 0x2

    .line 82
    int-to-float v2, v2

    .line 84
    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 85
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 88
    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 90
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 93
    iget-object v7, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    .line 95
    invoke-virtual {p1, v3, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 97
    iget v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    .line 100
    neg-float v3, v3

    .line 102
    sub-float/2addr v3, v6

    .line 103
    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 104
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 107
    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 109
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    .line 112
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 114
    move-result v3

    .line 117
    const/4 v7, 0x0

    .line 118
    invoke-virtual {v0, v3, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 119
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 122
    invoke-virtual {v3, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 124
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 127
    iget-object v7, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    .line 129
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 131
    invoke-virtual {v3, v7, v5, v4, v8}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 133
    iget v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    .line 136
    add-float/2addr v3, v6

    .line 138
    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 139
    iget-object v1, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 142
    invoke-virtual {v1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 147
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 149
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    return-void
    .line 160
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final getOpacity()I
    .locals 0

    .line 1
    const/16 p0, 0xff

    .line 2
    return p0
    .line 4
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 7
    return-void
    .line 10
.end method

.method public final setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 9
    return-void
    .line 12
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    return-void
    .line 12
.end method

.method public setDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    return-void
    .line 7
.end method

.method public final setTint(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    return-void
    .line 15
.end method

.method public final setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintList:Landroid/content/res/ColorStateList;

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;->setDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    .line 10
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 12
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 19
    return-void
    .line 22
.end method

.method public final setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 9
    return-void
    .line 12
.end method
