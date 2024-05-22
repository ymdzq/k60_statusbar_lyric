.class public final Lcom/android/systemui/statusbar/policy/DualClockObserver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public mShowDualClock:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mShowDualClock:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/policy/DualClockObserver$Callback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mShowDualClock:Z

    .line 14
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/DualClockObserver$Callback;->onDualShowClockChanged(Z)V

    .line 16
    return-void
    .line 19
.end method
