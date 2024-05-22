.class public final synthetic Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiWifiSignalController;->copyWifiStates()V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/connectivity/SignalController;->notifyListenersIfNecessary()V

    .line 7
    return-void
    .line 10
.end method
