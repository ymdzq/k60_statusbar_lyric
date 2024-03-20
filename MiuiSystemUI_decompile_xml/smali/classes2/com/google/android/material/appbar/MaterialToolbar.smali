.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field public logoAdjustViewBounds:Ljava/lang/Boolean;

.field public logoScaleType:Landroid/widget/ImageView$ScaleType;

.field public navigationIconTint:Ljava/lang/Integer;

.field public subtitleCentered:Z

.field public titleCentered:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    .line 6
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 8
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    .line 10
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    .line 12
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 14
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 16
    filled-new-array/range {v0 .. v7}, [Landroid/widget/ImageView$ScaleType;

    .line 18
    move-result-object v0

    .line 21
    sput-object v0, Lcom/google/android/material/appbar/MaterialToolbar;->LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;

    .line 22
    return-void
    .line 24
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040870    # @attr/toolbarStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const v0, 0x7f14083c    # @style/Widget.MaterialComponents.Toolbar

    .line 3
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    sget-object v2, Lcom/google/android/material/R$styleable;->MaterialToolbar:[I

    const v4, 0x7f14083c    # @style/Widget.MaterialComponents.Toolbar

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 6
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    .line 7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIconTint(I)V

    :cond_0
    const/4 p3, 0x4

    .line 9
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    const/4 p3, 0x3

    .line 10
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    const/4 p3, 0x1

    .line 11
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    if-ltz p3, :cond_1

    .line 12
    sget-object v0, Lcom/google/android/material/appbar/MaterialToolbar;->LOGO_SCALE_TYPE_ARRAY:[Landroid/widget/ImageView$ScaleType;

    array-length v1, v0

    if-ge p3, v1, :cond_1

    .line 13
    aget-object p3, v0, p3

    iput-object p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    .line 14
    :cond_1
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 15
    invoke-virtual {p2, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    .line 16
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 18
    instance-of p3, p2, Landroid/graphics/drawable/ColorDrawable;

    if-nez p3, :cond_3

    goto :goto_0

    .line 19
    :cond_3
    new-instance p3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {p3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    if-eqz p2, :cond_4

    .line 20
    check-cast p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v6

    .line 21
    :cond_4
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 22
    invoke-virtual {p3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 23
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 24
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api21Impl;->getElevation(Landroid/view/View;)F

    move-result p1

    .line 25
    invoke-virtual {p3, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setElevation(F)V

    .line 26
    invoke-static {p0, p3}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLogoScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    .line 2
    return-object p0
    .line 4
.end method

.method public getNavigationIconTint()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    .line 2
    return-object p0
    .line 4
.end method

.method public final layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    move-result v0

    .line 9
    div-int/lit8 p0, p0, 0x2

    .line 10
    div-int/lit8 v1, v0, 0x2

    .line 12
    sub-int/2addr p0, v1

    .line 14
    add-int/2addr v0, p0

    .line 15
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 16
    check-cast v1, Ljava/lang/Integer;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result v1

    .line 23
    sub-int/2addr v1, p0

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v1

    .line 29
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 30
    check-cast p2, Ljava/lang/Integer;

    .line 32
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result p2

    .line 37
    sub-int p2, v0, p2

    .line 38
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 40
    move-result p2

    .line 43
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    .line 44
    move-result p2

    .line 47
    if-lez p2, :cond_0

    .line 48
    add-int/2addr p0, p2

    .line 50
    sub-int/2addr v0, p2

    .line 51
    sub-int p2, v0, p0

    .line 52
    const/high16 v1, 0x40000000    # 2.0f

    .line 54
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 56
    move-result p2

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    .line 60
    move-result v1

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 67
    move-result p2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    .line 71
    move-result v1

    .line 74
    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 75
    return-void
    .line 78
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 2
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 5
    return-void
    .line 8
.end method

.method public final onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    .line 5
    const/4 p2, 0x0

    .line 7
    const/4 p3, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    iget-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    .line 11
    if-nez p1, :cond_0

    .line 13
    goto/16 :goto_3

    .line 15
    :cond_0
    sget-object p1, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Lcom/google/android/material/internal/ToolbarUtils$1;

    .line 17
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    .line 19
    move-result-object p1

    .line 22
    invoke-static {p0, p1}, Lcom/google/android/material/internal/ToolbarUtils;->getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    .line 23
    move-result-object p1

    .line 26
    move-object p4, p1

    .line 27
    check-cast p4, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 30
    move-result p4

    .line 33
    if-eqz p4, :cond_1

    .line 34
    move-object p1, p3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sget-object p4, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Lcom/google/android/material/internal/ToolbarUtils$1;

    .line 38
    invoke-static {p1, p4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 40
    move-result-object p1

    .line 43
    check-cast p1, Landroid/widget/TextView;

    .line 44
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    .line 46
    move-result-object p4

    .line 49
    invoke-static {p0, p4}, Lcom/google/android/material/internal/ToolbarUtils;->getTextViewsWithText(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    .line 50
    move-result-object p4

    .line 53
    move-object p5, p4

    .line 54
    check-cast p5, Ljava/util/ArrayList;

    .line 55
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 57
    move-result p5

    .line 60
    if-eqz p5, :cond_2

    .line 61
    move-object p4, p3

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    sget-object p5, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Lcom/google/android/material/internal/ToolbarUtils$1;

    .line 65
    invoke-static {p4, p5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 67
    move-result-object p4

    .line 70
    check-cast p4, Landroid/widget/TextView;

    .line 71
    :goto_1
    if-nez p1, :cond_3

    .line 73
    if-nez p4, :cond_3

    .line 75
    goto :goto_3

    .line 77
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    .line 78
    move-result p5

    .line 81
    div-int/lit8 v0, p5, 0x2

    .line 82
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    .line 84
    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    .line 88
    move-result v2

    .line 91
    sub-int/2addr p5, v2

    .line 92
    move v2, p2

    .line 93
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 94
    move-result v3

    .line 97
    if-ge v2, v3, :cond_6

    .line 98
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 100
    move-result-object v3

    .line 103
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 104
    move-result v4

    .line 107
    const/16 v5, 0x8

    .line 108
    if-eq v4, v5, :cond_5

    .line 110
    if-eq v3, p1, :cond_5

    .line 112
    if-eq v3, p4, :cond_5

    .line 114
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 116
    move-result v4

    .line 119
    if-ge v4, v0, :cond_4

    .line 120
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 122
    move-result v4

    .line 125
    if-le v4, v1, :cond_4

    .line 126
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    .line 128
    move-result v1

    .line 131
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 132
    move-result v4

    .line 135
    if-le v4, v0, :cond_5

    .line 136
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 138
    move-result v4

    .line 141
    if-ge v4, p5, :cond_5

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 144
    move-result p5

    .line 147
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 148
    goto :goto_2

    .line 150
    :cond_6
    new-instance v0, Landroid/util/Pair;

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v1

    .line 156
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    move-result-object p5

    .line 160
    invoke-direct {v0, v1, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    iget-boolean p5, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    .line 164
    if-eqz p5, :cond_7

    .line 166
    if-eqz p1, :cond_7

    .line 168
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V

    .line 170
    :cond_7
    iget-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    .line 173
    if-eqz p1, :cond_8

    .line 175
    if-eqz p4, :cond_8

    .line 177
    invoke-virtual {p0, p4, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->layoutTitleCenteredHorizontally(Landroid/view/View;Landroid/util/Pair;)V

    .line 179
    :cond_8
    :goto_3
    sget-object p1, Lcom/google/android/material/internal/ToolbarUtils;->VIEW_TOP_COMPARATOR:Lcom/google/android/material/internal/ToolbarUtils$1;

    .line 182
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getLogo()Landroid/graphics/drawable/Drawable;

    .line 184
    move-result-object p1

    .line 187
    if-nez p1, :cond_9

    .line 188
    goto :goto_5

    .line 190
    :cond_9
    :goto_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 191
    move-result p4

    .line 194
    if-ge p2, p4, :cond_b

    .line 195
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 197
    move-result-object p4

    .line 200
    instance-of p5, p4, Landroid/widget/ImageView;

    .line 201
    if-eqz p5, :cond_a

    .line 203
    check-cast p4, Landroid/widget/ImageView;

    .line 205
    invoke-virtual {p4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 207
    move-result-object p5

    .line 210
    if-eqz p5, :cond_a

    .line 211
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 213
    move-result-object v0

    .line 216
    if-eqz v0, :cond_a

    .line 217
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 219
    move-result-object p5

    .line 222
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    .line 223
    move-result-object v0

    .line 226
    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result p5

    .line 230
    if-eqz p5, :cond_a

    .line 231
    move-object p3, p4

    .line 233
    goto :goto_5

    .line 234
    :cond_a
    add-int/lit8 p2, p2, 0x1

    .line 235
    goto :goto_4

    .line 237
    :cond_b
    :goto_5
    if-eqz p3, :cond_d

    .line 238
    iget-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    .line 240
    if-eqz p1, :cond_c

    .line 242
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 244
    move-result p1

    .line 247
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 248
    :cond_c
    iget-object p0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    .line 251
    if-eqz p0, :cond_d

    .line 253
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 255
    :cond_d
    return-void
    .line 258
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 5
    return-void
    .line 8
.end method

.method public setLogoAdjustViewBounds(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    move-result v0

    .line 9
    if-eq v0, p1, :cond_1

    .line 10
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoAdjustViewBounds:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 18
    :cond_1
    return-void
    .line 21
.end method

.method public setLogoScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->logoScaleType:Landroid/widget/ImageView$ScaleType;

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 11
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 18
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 21
    return-void
    .line 24
.end method

.method public setNavigationIconTint(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->navigationIconTint:Ljava/lang/Integer;

    .line 6
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    .line 8
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/MaterialToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method

.method public setSubtitleCentered(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->subtitleCentered:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public setTitleCentered(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->titleCentered:Z

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
