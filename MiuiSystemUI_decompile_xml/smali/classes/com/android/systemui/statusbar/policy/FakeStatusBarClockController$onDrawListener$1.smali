.class public final Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onDrawListener$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onDrawListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onDrawListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimRunning:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-nez v1, :cond_1

    .line 8
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->tracking:Z

    .line 10
    if-nez v1, :cond_1

    .line 12
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->expansionAnimPending:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    move v1, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v1, v3

    .line 21
    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->setClockShow(Z)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onDrawListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 25
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->fakeStatusBarClock:Lcom/android/systemui/controlcenter/phone/widget/NotificationShadeFakeStatusBarClock;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isShown()Z

    .line 31
    move-result v0

    .line 34
    if-ne v0, v3, :cond_2

    .line 35
    move v0, v3

    .line 37
    goto :goto_2

    .line 38
    :cond_2
    move v0, v2

    .line 39
    :goto_2
    if-eqz v0, :cond_3

    .line 40
    goto :goto_3

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onDrawListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->statusBarClock:Landroid/widget/TextView;

    .line 45
    if-eqz v0, :cond_4

    .line 47
    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 49
    move-result-object v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 55
    :cond_4
    move v2, v3

    .line 58
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController$onDrawListener$1;->this$0:Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;

    .line 59
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->drawCount:I

    .line 61
    add-int/lit8 v1, v0, 0x1

    .line 63
    iput v1, p0, Lcom/android/systemui/statusbar/policy/FakeStatusBarClockController;->drawCount:I

    .line 65
    const-wide/16 v3, 0x1000

    .line 67
    const-string p0, "fake-onDrawListener"

    .line 69
    invoke-static {v3, v4, p0, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 71
    const-string p0, "fake-shouldDraw"

    .line 74
    invoke-static {v3, v4, p0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 76
    return v2
    .line 79
.end method
