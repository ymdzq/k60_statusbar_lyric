.class public Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mClipRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 p1, p1, 0xc0

    const/16 p2, 0x40

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    return-void
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 2
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 4
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 6
    sub-int/2addr v1, v0

    .line 8
    if-lez v1, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 21
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 24
    if-eqz v0, :cond_2

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 29
    :cond_2
    return-void
    .line 32
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 5
    and-int/lit16 p1, p1, 0xc0

    .line 7
    const/16 v0, 0x40

    .line 9
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    if-ne p1, v0, :cond_0

    .line 13
    move p1, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move p1, v2

    .line 17
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 21
    move-result p1

    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    move v1, v2

    .line 32
    :goto_1
    if-ge v2, p1, :cond_3

    .line 33
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 35
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 41
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_1

    .line 46
    :cond_3
    return-void
    .line 47
.end method

.method public final onLayout(ZIIII)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 2
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/view/View;

    .line 6
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 11
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/View;

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v2

    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    .line 21
    move-result v3

    .line 24
    sub-int/2addr v2, v3

    .line 25
    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result p4

    .line 29
    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    .line 30
    move-result p4

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    .line 34
    move-result v0

    .line 37
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 38
    move-result v0

    .line 41
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 42
    move-result p2

    .line 45
    :cond_0
    move v4, p2

    .line 46
    move v6, p4

    .line 47
    move-object v2, p0

    .line 48
    move v3, p1

    .line 49
    move v5, p3

    .line 50
    move v7, p5

    .line 51
    invoke-super/range {v2 .. v7}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 52
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 55
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 57
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 59
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 61
    move-result p2

    .line 64
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 65
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 67
    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 69
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 71
    move-result p1

    .line 74
    xor-int/lit8 p1, p1, 0x1

    .line 75
    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 79
    move-result v1

    .line 82
    :cond_1
    invoke-virtual {p0, v1, p0}, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->setClipRectRight(ILandroid/view/ViewGroup;)V

    .line 83
    return-void
    .line 86
.end method

.method public final onViewAdded(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    .line 5
    move-result p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 14
    return-void
    .line 17
.end method

.method public final setClipRectRight(ILandroid/view/ViewGroup;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    move-result v1

    .line 6
    if-ge v0, v1, :cond_3

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 13
    move-result v2

    .line 16
    int-to-float v2, v2

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 18
    move-result v3

    .line 21
    add-float/2addr v3, v2

    .line 22
    int-to-float v2, p1

    .line 23
    cmpg-float v3, v3, v2

    .line 24
    if-gez v3, :cond_2

    .line 26
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 28
    move-result v3

    .line 31
    int-to-float v3, v3

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 33
    move-result v4

    .line 36
    add-float/2addr v4, v3

    .line 37
    cmpl-float v2, v4, v2

    .line 38
    if-lez v2, :cond_2

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 42
    move-result v2

    .line 45
    const/16 v3, 0x8

    .line 46
    if-eq v2, v3, :cond_2

    .line 48
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 50
    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 54
    move-result v2

    .line 57
    int-to-float v2, v2

    .line 58
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 59
    move-result v3

    .line 62
    add-float/2addr v3, v2

    .line 63
    float-to-int v2, v3

    .line 64
    sub-int v2, p1, v2

    .line 65
    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->setClipRectRight(ILandroid/view/ViewGroup;)V

    .line 69
    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    .line 73
    move-result p2

    .line 76
    xor-int/lit8 p2, p2, 0x1

    .line 77
    if-eqz p2, :cond_1

    .line 79
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 83
    move-result p0

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    .line 87
    move-result v0

    .line 90
    int-to-float v0, v0

    .line 91
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 92
    move-result v1

    .line 95
    add-float/2addr v1, v0

    .line 96
    float-to-int v0, v1

    .line 97
    sub-int/2addr p1, v0

    .line 98
    sub-int/2addr p0, p1

    .line 99
    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 100
    goto :goto_2

    .line 102
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 103
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 105
    move-result v0

    .line 108
    int-to-float v0, v0

    .line 109
    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    .line 110
    move-result v1

    .line 113
    add-float/2addr v1, v0

    .line 114
    float-to-int v0, v1

    .line 115
    sub-int/2addr v0, p1

    .line 116
    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 117
    iget-object p1, p0, Lcom/android/systemui/statusbar/views/MiuiClipEdgeViewLinearLayout;->mClipRect:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 121
    move-result p0

    .line 124
    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 125
    goto :goto_2

    .line 127
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 128
    goto :goto_0

    .line 130
    :cond_3
    :goto_2
    return-void
    .line 131
.end method
