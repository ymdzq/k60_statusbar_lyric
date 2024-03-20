.class public Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;
.super Landroid/telephony/TelephonyCallback;
.source "DdsDataOptionStateTuner.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# instance fields
.field private isBroadcastRegistered:Z

.field private mActiveDataSubId:I

.field private final mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDataSubId:I

.field private mNonDdsCallState:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUpdateCallback:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fputmDefaultDataSubId(Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mDefaultDataSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Ljava/lang/Runnable;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 33
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mCallbacks:Ljava/util/Map;

    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mDefaultDataSubId:I

    .line 37
    iput v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mActiveDataSubId:I

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mNonDdsCallState:I

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->isBroadcastRegistered:Z

    .line 42
    new-instance v0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner$1;-><init>(Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 57
    iput-object p2, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 58
    iput-object p3, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mUpdateCallback:Ljava/lang/Runnable;

    .line 59
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mDefaultDataSubId:I

    .line 60
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mActiveDataSubId:I

    return-void
.end method

.method private update()V
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mUpdateCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 134
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public isDisallowed()Z
    .locals 1

    .line 107
    iget v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mNonDdsCallState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mDefaultDataSubId:I

    iget p0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mActiveDataSubId:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mActiveDataSubId:I

    .line 129
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->update()V

    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mNonDdsCallState:I

    .line 123
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->update()V

    return-void
.end method

.method public register(Landroid/content/Context;I)V
    .locals 3

    .line 65
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mDefaultDataSubId:I

    if-eq p2, v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object p2, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 71
    invoke-static {p2}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p2

    .line 72
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 74
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    iget v2, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mDefaultDataSubId:I

    if-eq v1, v2, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 77
    iget-object v1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mCallbacks:Ljava/util/Map;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 81
    :cond_2
    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->isBroadcastRegistered:Z

    return-void
.end method

.method public unregister(Landroid/content/Context;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mCallbacks:Ljava/util/Map;

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyCallback;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mCallbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->isBroadcastRegistered:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 96
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->isBroadcastRegistered:Z

    :cond_1
    return-void
.end method
