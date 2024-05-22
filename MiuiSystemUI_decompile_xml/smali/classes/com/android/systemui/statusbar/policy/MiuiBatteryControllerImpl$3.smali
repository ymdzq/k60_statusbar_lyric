.class public final Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 2
    iput p1, p2, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mCurrentUserId:I

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryStyleChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 8
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->onChange(Z)V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->updatePowerSave()V

    .line 14
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryPerformanceModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 17
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->onChange(Z)V

    .line 19
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 22
    new-instance p2, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;

    .line 24
    const/4 v0, 0x1

    .line 26
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;I)V

    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
    .line 33
.end method
