.class public final Landroidx/customview/widget/FocusStrategy$SequentialComparator;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

.field public final mIsLayoutRtl:Z

.field public final mTemp1:Landroid/graphics/Rect;

.field public final mTemp2:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ZLandroidx/customview/widget/FocusStrategy$BoundsAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 7
    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    .line 17
    iput-boolean p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    .line 19
    iput-object p2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    .line 4
    iget-object v2, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 6
    check-cast v2, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    check-cast p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 13
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 15
    iget-object p1, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroidx/customview/widget/FocusStrategy$BoundsAdapter;

    .line 18
    check-cast p1, Landroidx/customview/widget/ExploreByTouchHelper$1;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    check-cast p2, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 25
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 27
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 30
    iget p2, v1, Landroid/graphics/Rect;->top:I

    .line 32
    const/4 v2, -0x1

    .line 34
    if-ge p1, p2, :cond_0

    .line 35
    return v2

    .line 37
    :cond_0
    const/4 v3, 0x1

    .line 38
    if-le p1, p2, :cond_1

    .line 39
    return v3

    .line 41
    :cond_1
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 42
    iget p2, v1, Landroid/graphics/Rect;->left:I

    .line 44
    if-ge p1, p2, :cond_3

    .line 46
    iget-boolean p0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    .line 48
    if-eqz p0, :cond_2

    .line 50
    move v2, v3

    .line 52
    :cond_2
    return v2

    .line 53
    :cond_3
    if-le p1, p2, :cond_5

    .line 54
    iget-boolean p0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    .line 56
    if-eqz p0, :cond_4

    .line 58
    goto :goto_0

    .line 60
    :cond_4
    move v2, v3

    .line 61
    :goto_0
    return v2

    .line 62
    :cond_5
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 63
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    .line 65
    if-ge p1, p2, :cond_6

    .line 67
    return v2

    .line 69
    :cond_6
    if-le p1, p2, :cond_7

    .line 70
    return v3

    .line 72
    :cond_7
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 73
    iget p2, v1, Landroid/graphics/Rect;->right:I

    .line 75
    if-ge p1, p2, :cond_9

    .line 77
    iget-boolean p0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    .line 79
    if-eqz p0, :cond_8

    .line 81
    move v2, v3

    .line 83
    :cond_8
    return v2

    .line 84
    :cond_9
    if-le p1, p2, :cond_b

    .line 85
    iget-boolean p0, p0, Landroidx/customview/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    .line 87
    if-eqz p0, :cond_a

    .line 89
    goto :goto_1

    .line 91
    :cond_a
    move v2, v3

    .line 92
    :goto_1
    return v2

    .line 93
    :cond_b
    const/4 p0, 0x0

    .line 94
    return p0
    .line 95
.end method
