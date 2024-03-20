.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 4
    if-nez p1, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    .line 9
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->mTaskView:Lcom/android/wm/shell/taskview/TaskView;

    .line 14
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 19
    move-result p0

    .line 22
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 23
    int-to-float v0, v0

    .line 25
    cmpl-float p0, p0, v0

    .line 26
    if-ltz p0, :cond_2

    .line 28
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 30
    move-result p0

    .line 33
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 34
    int-to-float v0, v0

    .line 36
    cmpg-float p0, p0, v0

    .line 37
    if-gtz p0, :cond_2

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 41
    move-result p0

    .line 44
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 45
    int-to-float v0, v0

    .line 47
    cmpg-float p0, p0, v0

    .line 48
    if-ltz p0, :cond_1

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 52
    move-result p0

    .line 55
    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 56
    int-to-float p1, p1

    .line 58
    cmpl-float p0, p0, p1

    .line 59
    if-lez p0, :cond_2

    .line 61
    :cond_1
    const/4 p0, 0x1

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 65
    :goto_1
    return p0
.end method
