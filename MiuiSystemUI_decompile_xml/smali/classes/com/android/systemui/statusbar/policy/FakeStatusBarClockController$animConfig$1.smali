.class public final Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$animConfig$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$animConfig$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$animConfig$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result p2

    .line 11
    if-eqz p2, :cond_4

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object p2

    .line 17
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 18
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionProperty:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$scaleProperty$1;

    .line 22
    if-ne v0, v1, :cond_0

    .line 24
    iget-boolean p2, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 26
    const/4 v0, 0x1

    .line 28
    xor-int/2addr p2, v0

    .line 29
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimRunning:Z

    .line 30
    const/4 v2, 0x0

    .line 32
    if-ne v1, p2, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimRunning:Z

    .line 36
    const-wide/16 v3, 0x1000

    .line 38
    const-string v1, "fake-expansionAnimRunning"

    .line 40
    invoke-static {v3, v4, v1, p2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 42
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(I)V

    .line 47
    if-nez p2, :cond_3

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->drawCount:I

    .line 52
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->statusBarClock:Landroid/widget/TextView;

    .line 54
    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {p2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 58
    move-result-object p2

    .line 61
    if-eqz p2, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->onDrawListener:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onDrawListener$1;

    .line 64
    invoke-virtual {p2, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 66
    :cond_2
    new-instance p2, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$tracking$1;

    .line 69
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$tracking$1;-><init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;I)V

    .line 71
    const-wide/16 v0, 0x1f4

    .line 74
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->uiHandler:Landroid/os/Handler;

    .line 76
    invoke-virtual {v3, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 78
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->setClockShow(Z)V

    .line 82
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimPending:Z

    .line 85
    goto :goto_0

    .line 87
    :cond_4
    return-void
    .line 88
.end method
