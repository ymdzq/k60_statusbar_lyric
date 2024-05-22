.class public final Lcom/android/systemui/statusbar/phone/DozeScrimController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ScrimController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCancelled()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    .line 4
    return-void
    .line 7
.end method

.method public final onDisplayBlanked()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 8
    const-string v0, "onDisplayBlanked - not dozing"

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseDropped(Ljava/lang/String;)V

    .line 12
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 16
    if-eqz v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 20
    iget v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 27
    invoke-interface {p0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public final onFinished()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;->this$0:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    .line 4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 6
    iget v2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 8
    const-string/jumbo v3, "scrimCallback-onFinished"

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/doze/DozeLog;->tracePulseEvent(ZILjava/lang/String;)V

    .line 13
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    return-void

    .line 20
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 21
    const/4 v1, 0x1

    .line 23
    if-eq v0, v1, :cond_1

    .line 24
    const/4 v1, 0x6

    .line 26
    if-eq v0, v1, :cond_1

    .line 27
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 29
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 31
    const-string v2, "doze.pulse.duration.visible"

    .line 33
    const v3, 0x7f0b005c    # @integer/doze_pulse_duration_visible '6000'

    .line 35
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 38
    move-result v4

    .line 41
    int-to-long v4, v4

    .line 42
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 43
    invoke-virtual {v0, v6, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    .line 48
    move-result v1

    .line 51
    mul-int/lit8 v1, v1, 0x2

    .line 52
    int-to-long v1, v1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutExtended:Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    .line 55
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    :cond_1
    return-void
    .line 60
.end method
