.class public Lcom/android/systemui/statusbar/phone/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBlockFlinging:Z

.field public mTouchCancelled:Z

.field public mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 6
    return-void
    .line 8
.end method

.method private getMaxScrollY()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    .line 17
    move-result v2

    .line 20
    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    .line 21
    sub-int/2addr v2, v3

    .line 23
    iget p0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    .line 24
    sub-int/2addr v2, p0

    .line 26
    sub-int/2addr v0, v2

    .line 27
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    move-result v1

    .line 31
    :cond_0
    return v1
    .line 32
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 10
    if-nez v0, :cond_0

    .line 12
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 14
    return v2

    .line 16
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 20
    if-eqz v0, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 25
    if-nez v0, :cond_3

    .line 27
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 29
    move-result-object p1

    .line 32
    const/4 v0, 0x3

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 34
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 40
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    .line 43
    return v2

    .line 45
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 46
    move-result p0

    .line 49
    return p0
    .line 50
.end method

.method public final fling(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 2
    return-void
    .line 5
.end method

.method public final onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    return-void
    .line 5
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 5
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final overScrollBy(IIIIIIIIZ)Z
    .locals 2

    .line 1
    add-int v0, p4, p2

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    .line 4
    move-result v1

    .line 7
    sub-int/2addr v0, v1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public setBlockFlinging(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    .line 2
    return-void
    .line 4
.end method

.method public setListener(Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    .line 2
    return-void
    .line 4
.end method
