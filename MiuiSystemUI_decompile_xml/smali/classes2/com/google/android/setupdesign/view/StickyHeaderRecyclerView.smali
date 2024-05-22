.class public Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;
.super Lcom/google/android/setupdesign/view/HeaderRecyclerView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public statusBarInset:I

.field public sticky:Landroid/view/View;

.field public final stickyRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->statusBarInset:I

    .line 3
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->stickyRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->statusBarInset:I

    .line 6
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->stickyRect:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->statusBarInset:I

    .line 9
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->stickyRect:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->stickyRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 4
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 8
    move-result v2

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->stickyRect:Landroid/graphics/RectF;

    .line 18
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 20
    neg-float v1, v1

    .line 22
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 23
    neg-float v0, v0

    .line 25
    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    move-result p0

    .line 36
    return p0

    .line 37
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    move-result p0

    .line 41
    return p0
    .line 42
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->sticky:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 13
    move-result v1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    move-object v2, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->sticky:Landroid/view/View;

    .line 21
    :goto_0
    const/4 v3, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->sticky:Landroid/view/View;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 28
    move-result v0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v0, v3

    .line 33
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 34
    move-result v4

    .line 37
    add-int/2addr v4, v0

    .line 38
    iget v5, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->statusBarInset:I

    .line 39
    if-lt v4, v5, :cond_3

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    .line 43
    move-result v4

    .line 46
    if-nez v4, :cond_2

    .line 47
    goto :goto_2

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->stickyRect:Landroid/graphics/RectF;

    .line 50
    invoke-virtual {p0}, Landroid/graphics/RectF;->setEmpty()V

    .line 52
    goto :goto_3

    .line 55
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->stickyRect:Landroid/graphics/RectF;

    .line 56
    neg-int v5, v0

    .line 58
    iget v6, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->statusBarInset:I

    .line 59
    add-int/2addr v5, v6

    .line 61
    int-to-float v5, v5

    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 63
    move-result v6

    .line 66
    int-to-float v6, v6

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 68
    move-result v7

    .line 71
    sub-int/2addr v7, v0

    .line 72
    iget v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->statusBarInset:I

    .line 73
    add-int/2addr v7, v0

    .line 75
    int-to-float v0, v7

    .line 76
    const/4 v7, 0x0

    .line 77
    invoke-virtual {v4, v7, v5, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 78
    iget-object p0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->stickyRect:Landroid/graphics/RectF;

    .line 81
    iget p0, p0, Landroid/graphics/RectF;->top:F

    .line 83
    invoke-virtual {p1, v7, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 88
    move-result p0

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 92
    move-result v0

    .line 95
    invoke-virtual {p1, v3, v3, p0, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 96
    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 99
    :goto_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 102
    :cond_4
    return-void
    .line 105
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->statusBarInset:I

    .line 12
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 14
    move-result p0

    .line 17
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 18
    move-result v0

    .line 21
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 22
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {p1, p0, v2, v0, v1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 27
    :cond_0
    return-object p1
    .line 30
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/recyclerview/widget/RecyclerView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->sticky:Landroid/view/View;

    .line 5
    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    .line 9
    move-result-object p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    const-string/jumbo p2, "sticky"

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->sticky:Landroid/view/View;

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->sticky:Landroid/view/View;

    .line 24
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    .line 28
    move-result-object p0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 34
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 40
    move-result p1

    .line 43
    neg-int p1, p1

    .line 44
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 45
    move-result p2

    .line 48
    const/4 p3, 0x0

    .line 49
    invoke-virtual {p0, p3, p1, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 50
    :cond_1
    return-void
    .line 53
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderRecyclerView;->sticky:Landroid/view/View;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/HeaderRecyclerView;->getHeader()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
