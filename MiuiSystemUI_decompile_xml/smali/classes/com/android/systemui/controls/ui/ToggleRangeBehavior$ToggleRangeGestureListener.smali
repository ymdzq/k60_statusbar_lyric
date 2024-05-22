.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public isDragging:Z

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

.field public final v:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->v:Landroid/view/View;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 9
    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 17
    move-result-object p0

    .line 20
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 21
    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->longPress(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    .line 23
    return-void
    .line 26
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    .line 2
    const/4 p2, 0x1

    .line 4
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->v:Landroid/view/View;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    move-result-object p1

    .line 12
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 16
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 18
    move-result-object p4

    .line 21
    iput-boolean p2, p4, Lcom/android/systemui/controls/ui/ControlViewHolder;->userInteractionInProgress:Z

    .line 22
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 24
    move-result-object p4

    .line 27
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    .line 28
    if-eqz p1, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    const/4 p1, 0x0

    .line 33
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    move-result-object p1

    .line 37
    const v0, 0x7f070221    # @dimen/control_status_expanded '18.0sp'

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    move-result p1

    .line 44
    int-to-float p1, p1

    .line 45
    iget-object p4, p4, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    .line 46
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p4, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 49
    iput-boolean p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    .line 52
    :cond_1
    neg-float p1, p3

    .line 54
    iget-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->v:Landroid/view/View;

    .line 55
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    .line 57
    move-result p3

    .line 60
    int-to-float p3, p3

    .line 61
    div-float/2addr p1, p3

    .line 62
    const/16 p3, 0x2710

    .line 63
    int-to-float p3, p3

    .line 65
    mul-float/2addr p3, p1

    .line 66
    float-to-int p1, p3

    .line 67
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getClipLayer()Landroid/graphics/drawable/Drawable;

    .line 70
    move-result-object p3

    .line 73
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 74
    move-result p3

    .line 77
    add-int/2addr p3, p1

    .line 78
    invoke-virtual {p0, p3, p2, p2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    .line 79
    return p2
    .line 82
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 10
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    .line 14
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->getCvh()Lcom/android/systemui/controls/ui/ControlViewHolder;

    .line 18
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 22
    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    .line 24
    if-eqz v1, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    .line 30
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    .line 32
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->toggle(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Z)V

    .line 34
    const/4 p0, 0x1

    .line 37
    return p0
    .line 38
.end method
