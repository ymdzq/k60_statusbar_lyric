.class public final Lcom/android/systemui/util/BrightnessProgressDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/util/BrightnessProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/util/BrightnessProgressDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final canApplyTheme()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    .line 9
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move v0, v1

    .line 14
    :goto_0
    if-nez v0, :cond_1

    .line 15
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->canApplyTheme()Z

    .line 17
    move-result p0

    .line 20
    if-eqz p0, :cond_2

    .line 21
    :cond_1
    const/4 v1, 0x1

    .line 23
    :cond_2
    return v1
    .line 24
.end method

.method public final getChangingConfigurations()I
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getChangingConfigurations()I

    .line 2
    move-result p0

    .line 5
    or-int/lit16 p0, p0, 0x1000

    .line 6
    return p0
    .line 8
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/util/BrightnessProgressDrawable$RoundedCornerState;

    .line 2
    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-direct {v0, p0}, Lcom/android/systemui/util/BrightnessProgressDrawable$RoundedCornerState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    .line 11
    return-object v0
    .line 14
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getLevel()I

    .line 5
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/BrightnessProgressDrawable;->onLevelChange(I)Z

    .line 9
    return-void
    .line 12
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getLevel()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/BrightnessProgressDrawable;->onLevelChange(I)Z

    .line 6
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onLayoutDirectionChanged(I)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public final onLevelChange(I)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 21
    move-result v1

    .line 24
    div-int/lit8 v1, v1, 0x2

    .line 25
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 31
    move-result v2

    .line 34
    mul-int/2addr v2, p1

    .line 35
    div-int/lit16 v2, v2, 0x2710

    .line 36
    add-int/2addr v2, v1

    .line 38
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 39
    move-result-object v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    .line 45
    move-result-object v3

    .line 48
    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 49
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 51
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    .line 53
    move-result-object v5

    .line 56
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 57
    move-result v5

    .line 60
    if-le v2, v5, :cond_1

    .line 61
    move v2, v5

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    .line 64
    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 68
    move-result v5

    .line 71
    if-ge v2, v5, :cond_2

    .line 72
    move v2, v5

    .line 74
    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 75
    invoke-virtual {v1, v3, v4, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 77
    :cond_3
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onLevelChange(I)Z

    .line 80
    move-result p0

    .line 83
    return p0
    .line 84
.end method
