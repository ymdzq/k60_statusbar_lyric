.class public final Landroidx/appcompat/widget/AppCompatSeekBarHelper;
.super Landroidx/appcompat/widget/AppCompatProgressBarHelper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mHasTickMarkTint:Z

.field public mHasTickMarkTintMode:Z

.field public mTickMark:Landroid/graphics/drawable/Drawable;

.field public mTickMarkTintList:Landroid/content/res/ColorStateList;

.field public mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

.field public final mView:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 6
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 8
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 11
    iput-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 13
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final applyTickMarkTint()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 6
    if-nez v1, :cond_0

    .line 8
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 10
    if-eqz v1, :cond_3

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 18
    iget-boolean v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 20
    if-eqz v1, :cond_1

    .line 22
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 26
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 29
    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 33
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 35
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 37
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 48
    iget-object p0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 50
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getDrawableState()[I

    .line 52
    move-result-object p0

    .line 55
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 56
    :cond_3
    return-void
    .line 59
.end method

.method public final drawTickMarks(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 6
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-le v1, v2, :cond_3

    .line 13
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 17
    move-result v3

    .line 20
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 23
    move-result v4

    .line 26
    if-ltz v3, :cond_0

    .line 27
    div-int/lit8 v3, v3, 0x2

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    move v3, v2

    .line 32
    :goto_0
    if-ltz v4, :cond_1

    .line 33
    div-int/lit8 v2, v4, 0x2

    .line 35
    :cond_1
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 37
    neg-int v5, v3

    .line 39
    neg-int v6, v2

    .line 40
    invoke-virtual {v4, v5, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 41
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    .line 44
    move-result v2

    .line 47
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    .line 48
    move-result v3

    .line 51
    sub-int/2addr v2, v3

    .line 52
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingRight()I

    .line 53
    move-result v3

    .line 56
    sub-int/2addr v2, v3

    .line 57
    int-to-float v2, v2

    .line 58
    int-to-float v3, v1

    .line 59
    div-float/2addr v2, v3

    .line 60
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 61
    move-result v3

    .line 64
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingLeft()I

    .line 65
    move-result v4

    .line 68
    int-to-float v4, v4

    .line 69
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getHeight()I

    .line 70
    move-result v0

    .line 73
    div-int/lit8 v0, v0, 0x2

    .line 74
    int-to-float v0, v0

    .line 76
    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    const/4 v0, 0x0

    .line 80
    :goto_1
    if-gt v0, v1, :cond_2

    .line 81
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 92
    goto :goto_1

    .line 94
    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 95
    :cond_3
    return-void
    .line 98
.end method

.method public final loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 2
    iget-object v7, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 5
    invoke-virtual {v7}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatSeekBar:[I

    .line 11
    invoke-static {v0, p1, v2, p2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    .line 13
    move-result-object v8

    .line 16
    invoke-virtual {v7}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 20
    iget-object v4, v8, Landroidx/appcompat/widget/TintTypedArray;->mWrapped:Landroid/content/res/TypedArray;

    .line 21
    const/4 v6, 0x0

    .line 23
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 24
    move-object v0, v7

    .line 26
    move-object v3, p1

    .line 27
    move v5, p2

    .line 28
    invoke-static/range {v0 .. v6}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 29
    const/4 p1, 0x0

    .line 32
    invoke-virtual {v8, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {v7, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_0
    const/4 p1, 0x1

    .line 42
    invoke-virtual {v8, p1}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 43
    move-result-object p2

    .line 46
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 47
    if-eqz v0, :cond_1

    .line 49
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 52
    :cond_1
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;

    .line 55
    if-eqz p2, :cond_3

    .line 57
    invoke-virtual {p2, v7}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 59
    invoke-static {v7}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 62
    move-result v0

    .line 65
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 66
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 69
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    invoke-virtual {v7}, Landroid/widget/SeekBar;->getDrawableState()[I

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 79
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 82
    :cond_3
    invoke-virtual {v7}, Landroid/widget/SeekBar;->invalidate()V

    .line 85
    const/4 p2, 0x3

    .line 88
    invoke-virtual {v8, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 89
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    const/4 v0, -0x1

    .line 95
    invoke-virtual {v8, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    .line 96
    move-result p2

    .line 99
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 100
    invoke-static {p2, v0}, Landroidx/appcompat/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 102
    move-result-object p2

    .line 105
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 106
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z

    .line 108
    :cond_4
    const/4 p2, 0x2

    .line 110
    invoke-virtual {v8, p2}, Landroidx/appcompat/widget/TintTypedArray;->hasValue(I)Z

    .line 111
    move-result v0

    .line 114
    if-eqz v0, :cond_5

    .line 115
    invoke-virtual {v8, p2}, Landroidx/appcompat/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 117
    move-result-object p2

    .line 120
    iput-object p2, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;

    .line 121
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z

    .line 123
    :cond_5
    invoke-virtual {v8}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    .line 125
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V

    .line 128
    return-void
    .line 131
.end method
