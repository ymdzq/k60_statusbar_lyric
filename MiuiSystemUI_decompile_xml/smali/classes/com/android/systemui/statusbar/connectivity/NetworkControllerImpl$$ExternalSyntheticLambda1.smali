.class public final synthetic Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;->mWifiTracker:Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/wifi/WifiStatusTracker;->fetchInitialState()V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;->copyWifiStates()V

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    .line 14
    return-void
    .line 17
.end method
