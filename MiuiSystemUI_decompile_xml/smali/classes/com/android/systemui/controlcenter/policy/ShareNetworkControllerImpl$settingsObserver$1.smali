.class public final Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->URI_DATA_USAGE:Landroid/net/Uri;

    .line 2
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl$settingsObserver$1;->this$0:Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->getCelluarTetherDeviceInfo()Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/ShareNetworkControllerImpl;->onCellularTetherStateUpdateCallback(Lcom/android/systemui/controlcenter/policy/ShareNetworkController$Cellular;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
