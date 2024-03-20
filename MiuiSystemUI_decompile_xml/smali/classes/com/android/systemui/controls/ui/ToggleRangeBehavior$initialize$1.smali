.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $gestureDetector:Landroid/view/GestureDetector;

.field public final synthetic $gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method public constructor <init>(Landroid/view/GestureDetector;Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureDetector:Landroid/view/GestureDetector;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureDetector:Landroid/view/GestureDetector;

    .line 2
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 12
    move-result p2

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p2, v0, :cond_1

    .line 17
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

    .line 19
    iget-boolean p2, p2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    .line 21
    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 25
    move-result-object p1

    .line 28
    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 29
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->$gestureListener:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;

    .line 32
    iput-boolean v1, p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$ToggleRangeGestureListener;->isDragging:Z

    .line 34
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->endUpdateRange()V

    .line 38
    :cond_1
    return v1
    .line 41
.end method
