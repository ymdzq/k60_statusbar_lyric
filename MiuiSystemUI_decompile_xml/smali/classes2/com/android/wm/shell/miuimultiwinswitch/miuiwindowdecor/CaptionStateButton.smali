.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-direct {p0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 4
    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;->mGestureDetector:Landroid/view/GestureDetector;

    .line 7
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 9
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 13
    move-result p1

    .line 16
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;->mTouchSlop:I

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->performClick()Z

    .line 2
    const/4 p0, 0x0

    .line 5
    return p0
    .line 6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;->mGestureDetector:Landroid/view/GestureDetector;

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_2

    .line 12
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    const/4 p1, 0x3

    .line 20
    if-eq v0, p1, :cond_1

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 28
    move-result p1

    .line 31
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;->mTouchSlop:I

    .line 32
    int-to-float v3, v3

    .line 34
    invoke-virtual {p0, v0, p1, v3}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/CaptionStateButton;->pointInView(FFF)Z

    .line 35
    move-result p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 45
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isSelected()Z

    .line 49
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 55
    :cond_3
    :goto_0
    return v1
    .line 58
.end method

.method public pointInView(FFF)Z
    .locals 2

    .line 1
    neg-float v0, p3

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    if-ltz v1, :cond_0

    .line 5
    cmpl-float v0, p2, v0

    .line 7
    if-ltz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    .line 15
    move-result v1

    .line 18
    sub-int/2addr v0, v1

    .line 19
    int-to-float v0, v0

    .line 20
    add-float/2addr v0, p3

    .line 21
    cmpg-float p1, p1, v0

    .line 22
    if-gez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    .line 26
    move-result p1

    .line 29
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 30
    move-result p0

    .line 33
    sub-int/2addr p1, p0

    .line 34
    int-to-float p0, p1

    .line 35
    add-float/2addr p0, p3

    .line 36
    cmpg-float p0, p2, p0

    .line 37
    if-gez p0, :cond_0

    .line 39
    const/4 p0, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 p0, 0x0

    .line 43
    :goto_0
    return p0
    .line 44
.end method
