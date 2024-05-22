.class public Lcom/android/systemui/qs/QSScrollLayout;
.super Landroidx/core/widget/NestedScrollView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mContentTranslationY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/QSScrollLayout$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/QSScrollLayout$1;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/QSScrollLayout;->mContentTranslationY:F

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 8
    iget p0, p0, Lcom/android/systemui/qs/QSScrollLayout;->mContentTranslationY:F

    .line 11
    neg-float p0, p0

    .line 13
    invoke-virtual {p1, v1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 14
    return-void
    .line 17
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    .line 3
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    throw p0
    .line 19
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    .line 3
    move-result p1

    .line 6
    if-nez p1, :cond_0

    .line 7
    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->canScrollVertically(I)Z

    .line 10
    move-result p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    throw p0
    .line 19
.end method
