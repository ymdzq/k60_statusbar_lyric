.class public final Lcom/android/keyguard/KeyguardClockSwitchController$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardClockSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardClockSwitchController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$1;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$1;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;

    .line 13
    const/4 v0, 0x0

    .line 15
    invoke-direct {p1, v0, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 19
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 23
    return-void

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$1;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setWeatherVisibility()V

    .line 29
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 34
.end method
