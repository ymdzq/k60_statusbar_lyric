.class public Lmiuix/animation/controller/ListViewTouchListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDownX:F

.field private mDownY:F

.field private mListeners:Ljava/util/WeakHashMap;

.field private mRect:Landroid/graphics/Rect;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/WeakHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    .line 17
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 19
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    .line 22
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    .line 24
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 34
    move-result p1

    .line 37
    iput p1, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    .line 38
    return-void
    .line 40
.end method

.method private getTouchedItemView(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 2
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 7
    move-result p2

    .line 10
    float-to-int p2, p2

    .line 11
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    .line 12
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_1

    .line 17
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    .line 19
    move-result-object v3

    .line 22
    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    .line 23
    invoke-virtual {v3, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 25
    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    .line 28
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    .line 30
    move-result v5

    .line 33
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    .line 34
    move-result v6

    .line 37
    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 38
    iget-object v4, p0, Lmiuix/animation/controller/ListViewTouchListener;->mRect:Landroid/graphics/Rect;

    .line 41
    invoke-virtual {v4, v0, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 43
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    return-object v3

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    const/4 p0, 0x0

    .line 53
    return-object p0
    .line 54
.end method

.method private notifyItemListeners(Landroid/widget/AbsListView;Landroid/view/MotionEvent;Z)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lmiuix/animation/controller/ListViewTouchListener;->getTouchedItemView(Landroid/widget/AbsListView;Landroid/view/MotionEvent;)Landroid/view/View;

    .line 2
    move-result-object p1

    .line 5
    iget-object p0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    .line 6
    invoke-virtual {p0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    .line 8
    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    check-cast v1, Landroid/view/View;

    .line 32
    if-nez p3, :cond_0

    .line 34
    if-ne v1, p1, :cond_0

    .line 36
    const/4 v2, 0x1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 v2, 0x0

    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/View$OnTouchListener;

    .line 45
    if-eqz v2, :cond_1

    .line 47
    move-object v2, p2

    .line 49
    goto :goto_2

    .line 50
    :cond_1
    const/4 v2, 0x0

    .line 51
    :goto_2
    invoke-interface {v0, v1, v2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    return-void
    .line 56
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    .line 15
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 20
    move-result v0

    .line 23
    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    .line 24
    sub-float/2addr v0, v2

    .line 26
    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    .line 27
    int-to-float v2, v2

    .line 29
    cmpl-float v0, v0, v2

    .line 30
    if-gtz v0, :cond_1

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 34
    move-result v0

    .line 37
    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    .line 38
    sub-float/2addr v0, v2

    .line 40
    iget v2, p0, Lmiuix/animation/controller/ListViewTouchListener;->mTouchSlop:I

    .line 41
    int-to-float v2, v2

    .line 43
    cmpl-float v0, v0, v2

    .line 44
    if-lez v0, :cond_3

    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 50
    move-result v0

    .line 53
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownX:F

    .line 54
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 56
    move-result v0

    .line 59
    iput v0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mDownY:F

    .line 60
    :cond_3
    :goto_0
    move v0, v1

    .line 62
    :goto_1
    check-cast p1, Landroid/widget/AbsListView;

    .line 63
    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/controller/ListViewTouchListener;->notifyItemListeners(Landroid/widget/AbsListView;Landroid/view/MotionEvent;Z)V

    .line 65
    return v1
    .line 68
.end method

.method public putListener(Landroid/view/View;Landroid/view/View$OnTouchListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/controller/ListViewTouchListener;->mListeners:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {p0, p1, p2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    return-void
    .line 7
.end method
