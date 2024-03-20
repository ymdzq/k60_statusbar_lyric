.class public final Lcom/android/systemui/statusbar/policy/CarrierObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBgHandler:Landroid/os/Handler;

.field public final mBroadcastReceiver:Lcom/android/systemui/statusbar/policy/CarrierObserver$1;

.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mCarriers:[Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNetworkNameSeparator:Ljava/lang/String;

.field public volatile mPhoneCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Lcom/android/systemui/statusbar/policy/CarrierObserver$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CarrierObserver$1;-><init>(Lcom/android/systemui/statusbar/policy/CarrierObserver;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mBroadcastReceiver:Lcom/android/systemui/statusbar/policy/CarrierObserver$1;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mContext:Landroid/content/Context;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mMainHandler:Landroid/os/Handler;

    .line 21
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mBgHandler:Landroid/os/Handler;

    .line 23
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    .line 25
    move-result-object p2

    .line 28
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    .line 29
    move-result p2

    .line 32
    iput p2, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mPhoneCount:I

    .line 33
    iget p2, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mPhoneCount:I

    .line 35
    new-array p2, p2, [Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mCarriers:[Ljava/lang/String;

    .line 39
    const p2, 0x7f130b21    # @string/status_bar_network_name_separator '-'

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mNetworkNameSeparator:Ljava/lang/String;

    .line 48
    new-instance v2, Landroid/content/IntentFilter;

    .line 50
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    const-string p1, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    .line 55
    invoke-virtual {v2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const/4 p2, 0x1

    .line 60
    :goto_0
    iget p3, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mPhoneCount:I

    .line 61
    if-ge p2, p3, :cond_0

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p3

    .line 76
    invoke-virtual {v2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    add-int/lit8 p2, p2, 0x1

    .line 80
    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mContext:Landroid/content/Context;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mBroadcastReceiver:Lcom/android/systemui/statusbar/policy/CarrierObserver$1;

    .line 85
    const/4 v3, 0x0

    .line 87
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CarrierObserver;->mBgHandler:Landroid/os/Handler;

    .line 88
    const/4 v5, 0x2

    .line 90
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 91
    return-void
    .line 94
.end method
