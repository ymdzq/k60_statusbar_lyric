.class public final Lcom/android/systemui/statusbar/policy/CarrierObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/CarrierObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/CarrierObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1;->this$0:Lcom/android/systemui/statusbar/policy/CarrierObserver;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    sget-object v0, Lmiui/telephony/SubscriptionManager;->SLOT_KEY:Ljava/lang/String;

    .line 2
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 6
    move-result v0

    .line 9
    sget v1, Lmiui/telephony/SubscriptionManager;->INVALID_SLOT_ID:I

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-static {p1}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    invoke-static {p1}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    .line 22
    move-result v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    const/4 v1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move v1, v2

    .line 30
    :goto_0
    if-eqz v1, :cond_2

    .line 31
    invoke-static {p1}, Lcom/miui/utils/VirtualSimUtils;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 p1, 0x0

    .line 38
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_5

    .line 43
    const-string v1, "android.telephony.extra.SHOW_PLMN"

    .line 45
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 47
    move-result v1

    .line 50
    const-string v3, "android.telephony.extra.SHOW_SPN"

    .line 51
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 53
    move-result v2

    .line 56
    const-string v3, "android.telephony.extra.PLMN"

    .line 57
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 62
    const-string v4, "android.telephony.extra.SPN"

    .line 63
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p2

    .line 68
    if-eqz v1, :cond_4

    .line 69
    if-eqz v3, :cond_4

    .line 71
    if-eqz v2, :cond_3

    .line 73
    if-eqz p2, :cond_3

    .line 75
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 80
    if-nez p1, :cond_3

    .line 81
    invoke-static {v3}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    move-result-object p1

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1;->this$0:Lcom/android/systemui/statusbar/policy/CarrierObserver;

    .line 87
    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mNetworkNameSeparator:Ljava/lang/String;

    .line 89
    invoke-static {p1, v1, p2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move-object p1, v3

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    if-eqz v2, :cond_5

    .line 98
    if-eqz p2, :cond_5

    .line 100
    move-object p1, p2

    .line 102
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1;->this$0:Lcom/android/systemui/statusbar/policy/CarrierObserver;

    .line 103
    iget p2, p2, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mPhoneCount:I

    .line 105
    if-ge v0, p2, :cond_6

    .line 107
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1;->this$0:Lcom/android/systemui/statusbar/policy/CarrierObserver;

    .line 109
    iget-object p2, p2, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mMainHandler:Landroid/os/Handler;

    .line 111
    new-instance v1, Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;

    .line 113
    invoke-direct {v1, p0, v0, p1}, Lcom/android/systemui/statusbar/policy/CarrierObserver$1$1;-><init>(Lcom/android/systemui/statusbar/policy/CarrierObserver$1;ILjava/lang/String;)V

    .line 115
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 118
    :cond_6
    return-void
    .line 121
.end method
