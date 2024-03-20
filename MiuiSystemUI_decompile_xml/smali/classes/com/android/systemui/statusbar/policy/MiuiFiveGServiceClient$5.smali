.class public final Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

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
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    const-string v0, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    const-string p1, "FiveGServiceClient"

    .line 17
    const-string p2, "500ms delay when slot changes"

    .line 19
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 24
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 26
    const/16 p2, 0x2714

    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 30
    move-result-object p1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mHandler:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$ServiceHandler;

    .line 36
    const-wide/16 v0, 0x1f4

    .line 38
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result p1

    .line 49
    if-eqz p1, :cond_4

    .line 50
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 52
    move-result-object p1

    .line 55
    const-string p2, "android.telephony.extra.SLOT_INDEX"

    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 58
    move-result p1

    .line 61
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 62
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    .line 67
    move-result-object v0

    .line 70
    invoke-virtual {v0, p1}, Lmiui/telephony/SubscriptionManager;->getSubscriptionIdForSlot(I)I

    .line 71
    move-result v0

    .line 74
    if-ltz p1, :cond_3

    .line 75
    iget-object v1, p2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->m5gIconCarrierOptimization:[Z

    .line 77
    array-length v2, v1

    .line 79
    if-ge p1, v2, :cond_3

    .line 80
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->mContext:Landroid/content/Context;

    .line 82
    const-string v2, "carrier_config"

    .line 84
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    move-result-object p2

    .line 89
    check-cast p2, Landroid/telephony/CarrierConfigManager;

    .line 90
    const/4 v2, 0x0

    .line 92
    if-eqz p2, :cond_2

    .line 93
    invoke-virtual {p2, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 95
    move-result-object p2

    .line 98
    if-eqz p2, :cond_2

    .line 99
    const-string v3, "config_5g_icon_optimization"

    .line 101
    invoke-virtual {p2, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 103
    move-result v2

    .line 106
    :cond_2
    aput-boolean v2, v1, p1

    .line 107
    const-string/jumbo p2, "slotId = "

    .line 109
    const-string v2, ",subId = "

    .line 112
    const-string v3, ","

    .line 114
    invoke-static {p2, p1, v2, v0, v3}, Landroidx/recyclerview/widget/GridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    move-result-object p2

    .line 119
    aget-boolean p1, v1, p1

    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 128
    const-string/jumbo p2, "update5gIconCarrierOptimization"

    .line 129
    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->localLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient$5;->this$0:Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiFiveGServiceClient;->update5GIcon()V

    .line 137
    :cond_4
    :goto_0
    return-void
    .line 140
.end method
