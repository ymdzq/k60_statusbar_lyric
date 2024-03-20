.class public final Lcom/android/systemui/statusbar/notification/stack/NotificationSection;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBottomAnimator:Landroid/animation/ObjectAnimator;

.field public final mBounds:Landroid/graphics/Rect;

.field public final mBucket:I

.field public final mCurrentBounds:Landroid/graphics/Rect;

.field public final mEndAnimationRect:Landroid/graphics/Rect;

.field public mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final mOwningView:Landroid/view/View;

.field public final mStartAnimationRect:Landroid/graphics/Rect;

.field public mTopAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(ILcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBounds:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    const/4 v1, -0x1

    .line 14
    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mCurrentBounds:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    .line 20
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mStartAnimationRect:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    .line 27
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 32
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 35
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mOwningView:Landroid/view/View;

    .line 39
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBucket:I

    .line 41
    return-void
    .line 43
.end method


# virtual methods
.method public final updateBounds(IIZ)I
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mFirstVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 2
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mEndAnimationRect:Landroid/graphics/Rect;

    .line 5
    const/4 v3, 0x0

    .line 7
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mCurrentBounds:Landroid/graphics/Rect;

    .line 8
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBounds:Landroid/graphics/Rect;

    .line 10
    if-eqz v0, :cond_4

    .line 12
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    .line 14
    move-result v6

    .line 17
    float-to-double v6, v6

    .line 18
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 19
    move-result-wide v6

    .line 22
    double-to-int v6, v6

    .line 23
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mTopAnimator:Landroid/animation/ObjectAnimator;

    .line 24
    if-nez v7, :cond_0

    .line 26
    iget v8, v4, Landroid/graphics/Rect;->top:I

    .line 28
    if-eq v8, v6, :cond_1

    .line 30
    :cond_0
    if-eqz v7, :cond_2

    .line 32
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 34
    if-ne v7, v6, :cond_2

    .line 36
    :cond_1
    move v7, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    move v7, v3

    .line 40
    :goto_0
    if-eqz v7, :cond_3

    .line 41
    move v7, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 45
    move-result v7

    .line 48
    float-to-double v7, v7

    .line 49
    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    .line 50
    move-result-wide v7

    .line 53
    double-to-int v7, v7

    .line 54
    :goto_1
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    .line 55
    move-result v7

    .line 58
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->showingPulsing()Z

    .line 59
    move-result v8

    .line 62
    if-eqz v8, :cond_5

    .line 63
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    .line 65
    move-result v8

    .line 68
    add-int/2addr v8, v6

    .line 69
    invoke-static {p1, v8}, Ljava/lang/Math;->max(II)I

    .line 70
    move-result p1

    .line 73
    if-eqz p3, :cond_5

    .line 74
    iget p3, v5, Landroid/graphics/Rect;->left:I

    .line 76
    int-to-float p3, p3

    .line 78
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    .line 79
    move-result v6

    .line 82
    const/4 v8, 0x0

    .line 83
    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    .line 84
    move-result v6

    .line 87
    add-float/2addr v6, p3

    .line 88
    float-to-int p3, v6

    .line 89
    iput p3, v5, Landroid/graphics/Rect;->left:I

    .line 90
    iget p3, v5, Landroid/graphics/Rect;->right:I

    .line 92
    int-to-float p3, p3

    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    .line 95
    move-result v0

    .line 98
    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    .line 99
    move-result v0

    .line 102
    add-float/2addr v0, p3

    .line 103
    float-to-int p3, v0

    .line 104
    iput p3, v5, Landroid/graphics/Rect;->right:I

    .line 105
    goto :goto_2

    .line 107
    :cond_4
    move v7, p1

    .line 108
    :cond_5
    :goto_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mLastVisibleChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 109
    if-eqz p3, :cond_a

    .line 111
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getFinalTranslationY(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)F

    .line 113
    move-result v0

    .line 116
    invoke-static {p3}, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->getFinalActualHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)I

    .line 117
    move-result v6

    .line 120
    int-to-float v6, v6

    .line 121
    add-float/2addr v0, v6

    .line 122
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 123
    move-result v6

    .line 126
    int-to-float v6, v6

    .line 127
    sub-float/2addr v0, v6

    .line 128
    float-to-double v8, v0

    .line 129
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    .line 130
    move-result-wide v8

    .line 133
    double-to-int v0, v8

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->mBottomAnimator:Landroid/animation/ObjectAnimator;

    .line 135
    if-nez p0, :cond_6

    .line 137
    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 139
    if-eq v4, v0, :cond_8

    .line 141
    :cond_6
    if-eqz p0, :cond_7

    .line 143
    iget p0, v2, Landroid/graphics/Rect;->bottom:I

    .line 145
    if-ne p0, v0, :cond_7

    .line 147
    goto :goto_3

    .line 149
    :cond_7
    move v1, v3

    .line 150
    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 151
    goto :goto_4

    .line 153
    :cond_9
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 154
    move-result p0

    .line 157
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 158
    move-result v0

    .line 161
    int-to-float v0, v0

    .line 162
    add-float/2addr p0, v0

    .line 163
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getClipBottomAmount()I

    .line 164
    move-result v0

    .line 167
    int-to-float v0, v0

    .line 168
    sub-float/2addr p0, v0

    .line 169
    float-to-int v0, p0

    .line 170
    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getTranslationY()F

    .line 171
    move-result p0

    .line 174
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 175
    move-result p3

    .line 178
    int-to-float p3, p3

    .line 179
    add-float/2addr p0, p3

    .line 180
    int-to-float p2, p2

    .line 181
    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    .line 182
    move-result p0

    .line 185
    float-to-int p2, p0

    .line 186
    :goto_4
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    .line 187
    move-result p0

    .line 190
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    .line 191
    move-result p1

    .line 194
    :cond_a
    invoke-static {v7, p1}, Ljava/lang/Math;->max(II)I

    .line 195
    move-result p0

    .line 198
    iput v7, v5, Landroid/graphics/Rect;->top:I

    .line 199
    iput p0, v5, Landroid/graphics/Rect;->bottom:I

    .line 201
    return p0
    .line 203
.end method
