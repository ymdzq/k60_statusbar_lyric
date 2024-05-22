.class public final Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController$TimeListener;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController$TimeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 2
    iget-boolean v1, v0, Lcom/android/keyguard/ClockEventController$TimeListener;->isRunning:Z

    .line 4
    if-nez v1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/android/keyguard/ClockEventController$TimeListener;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 9
    const-wide/16 v1, 0x3de

    .line 11
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 13
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener$secondsRunnable$1;->this$0:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$TimeListener;->clockFace:Lcom/android/systemui/plugins/ClockFaceController;

    .line 18
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockFaceController;->getEvents()Lcom/android/systemui/plugins/ClockFaceEvents;

    .line 20
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockFaceEvents;->onTimeTick()V

    .line 24
    return-void
    .line 27
.end method
