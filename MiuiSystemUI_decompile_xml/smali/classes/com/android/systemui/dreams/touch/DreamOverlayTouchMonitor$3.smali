.class public final Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final evaluate(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$Evaluator;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 7
    iget-object v1, v1, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    .line 9
    invoke-virtual {v1}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    .line 11
    move-result-object v1

    .line 14
    new-instance v2, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda3;

    .line 15
    invoke-direct {v2, p1, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$Evaluator;Ljava/util/Set;)V

    .line 17
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 20
    move-result-object p1

    .line 23
    new-instance v1, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda4;

    .line 24
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda4;-><init>(I)V

    .line 27
    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 30
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 36
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    .line 38
    invoke-virtual {p0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    .line 40
    move-result-object v1

    .line 43
    new-instance v2, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$$ExternalSyntheticLambda2;

    .line 44
    invoke-direct {v2, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    .line 46
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 49
    move-result-object v0

    .line 52
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda4;

    .line 53
    invoke-direct {v1}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda4;-><init>()V

    .line 55
    invoke-static {v1}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 58
    move-result-object v1

    .line 61
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 62
    move-result-object v0

    .line 65
    check-cast v0, Ljava/util/Collection;

    .line 66
    new-instance v1, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$$ExternalSyntheticLambda1;

    .line 68
    const/4 v2, 0x1

    .line 70
    invoke-direct {v1, v2}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$$ExternalSyntheticLambda1;-><init>(I)V

    .line 71
    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 77
    :cond_0
    return p1
    .line 80
.end method

.method public final observe(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda1;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->this$0:Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor;->mActiveTouchSessions:Ljava/util/HashSet;

    .line 4
    invoke-virtual {p0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    .line 6
    move-result-object p0

    .line 9
    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2$$ExternalSyntheticLambda1;

    .line 10
    const/4 v1, 0x2

    .line 12
    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2$$ExternalSyntheticLambda1;-><init>(I)V

    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 16
    move-result-object p0

    .line 19
    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2$$ExternalSyntheticLambda1;

    .line 20
    const/4 v1, 0x3

    .line 22
    invoke-direct {v0, v1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2$$ExternalSyntheticLambda1;-><init>(I)V

    .line 23
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 26
    move-result-object p0

    .line 29
    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2$$ExternalSyntheticLambda2;

    .line 30
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, v1, p1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$2$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 33
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 36
    return-void
    .line 39
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->evaluate(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$Evaluator;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda0;

    .line 2
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFI)V

    .line 10
    invoke-virtual {p0, v6}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->evaluate(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$Evaluator;)Z

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->observe(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda1;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7

    .line 1
    new-instance v6, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda0;

    .line 2
    const/4 v5, 0x1

    .line 4
    move-object v0, v6

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFI)V

    .line 10
    invoke-virtual {p0, v6}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->evaluate(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$Evaluator;)Z

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda1;-><init>(Landroid/view/MotionEvent;I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->observe(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda1;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda2;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3$$ExternalSyntheticLambda2;-><init>(Landroid/view/MotionEvent;I)V

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$3;->evaluate(Lcom/android/systemui/dreams/touch/DreamOverlayTouchMonitor$Evaluator;)Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method
