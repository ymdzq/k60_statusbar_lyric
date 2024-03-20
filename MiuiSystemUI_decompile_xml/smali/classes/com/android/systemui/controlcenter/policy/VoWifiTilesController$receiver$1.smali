.class public final Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$receiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$receiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 6
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_3

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 23
    move-result p1

    .line 26
    const-string v0, "android.telephony.extra.SUBSCRIPTION_INDEX"

    .line 27
    const/4 v1, -0x1

    .line 29
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 30
    move-result p2

    .line 33
    const-string v0, "onReceive: phoneId "

    .line 34
    const-string v1, " subId "

    .line 36
    const-string v2, "DynamicVowifiController"

    .line 38
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$receiver$1;->this$0:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->voWifiAvailable:[Z

    .line 45
    aget-boolean v1, v0, p1

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->isVoWifiAvailable(I)Z

    .line 49
    move-result v2

    .line 52
    const/4 v3, 0x1

    .line 53
    if-eqz v2, :cond_0

    .line 54
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 56
    move-result p2

    .line 59
    if-eqz p2, :cond_0

    .line 60
    move p2, v3

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p2, 0x0

    .line 64
    :goto_0
    aput-boolean p2, v0, p1

    .line 65
    if-eq v1, p2, :cond_3

    .line 67
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->callbacks:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 71
    move-result-object p2

    .line 74
    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    move-result v0

    .line 78
    if-eqz v0, :cond_2

    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    move-result-object v0

    .line 84
    check-cast v0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$Callback;

    .line 85
    check-cast v0, Lcom/android/systemui/qs/tiles/VoWifiTile;

    .line 87
    iget v1, v0, Lcom/android/systemui/qs/tiles/VoWifiTile;->mSlotId:I

    .line 89
    if-ne p1, v1, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VoWifiTile;->isAvailable()Z

    .line 93
    move-result v1

    .line 96
    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/VoWifiTile;->mIsAvailable:Z

    .line 97
    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 100
    goto :goto_1

    .line 103
    :cond_2
    new-instance p1, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;

    .line 104
    invoke-direct {p1, p0, v3}, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController$init$1;-><init>(Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;I)V

    .line 106
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;->uiExecutor:Ljava/util/concurrent/Executor;

    .line 109
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 111
    :cond_3
    return-void
    .line 114
.end method
