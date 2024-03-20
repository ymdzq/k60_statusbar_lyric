.class public final Lcom/android/systemui/MiuiOperatorCustomizedPolicy;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;


# instance fields
.field public final CT_SIM_MCC_MNC:[Ljava/lang/String;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public volatile mCotaCarrier:Ljava/lang/String;

.field public final mCotaCarrierListeners:Ljava/util/ArrayList;

.field public final mHasVoiceCallingFeature:Z

.field public final mListeners:Ljava/util/ArrayList;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMccMncResouresArray:Landroid/util/SparseArray;

.field public final mNoMccMncResources:Landroid/content/res/Resources;

.field public mNumberCards:I

.field public final mOperatorConfigs:Landroid/util/SparseArray;

.field public final mOperators:Landroid/util/SparseArray;

.field public final mPhone:Landroid/telephony/TelephonyManager;

.field public final mPhoneCount:I

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mContext:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMainHandler:Landroid/os/Handler;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mBgHandler:Landroid/os/Handler;

    .line 9
    new-instance p3, Landroid/util/SparseArray;

    .line 11
    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 13
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 16
    new-instance p3, Landroid/util/SparseArray;

    .line 18
    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 20
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperators:Landroid/util/SparseArray;

    .line 23
    new-instance p3, Landroid/util/SparseArray;

    .line 25
    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 27
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperatorConfigs:Landroid/util/SparseArray;

    .line 30
    new-instance p3, Ljava/util/ArrayList;

    .line 32
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mListeners:Ljava/util/ArrayList;

    .line 37
    const-string p3, "46011"

    .line 39
    const-string p4, "46005"

    .line 41
    const-string v0, "46003"

    .line 43
    const-string v1, "45502"

    .line 45
    const-string v2, "45507"

    .line 47
    filled-new-array {v0, p3, p4, v1, v2}, [Ljava/lang/String;

    .line 49
    move-result-object p3

    .line 52
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->CT_SIM_MCC_MNC:[Ljava/lang/String;

    .line 53
    new-instance p3, Ljava/util/ArrayList;

    .line 55
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrierListeners:Ljava/util/ArrayList;

    .line 60
    const-string p3, "phone"

    .line 62
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object p3

    .line 67
    check-cast p3, Landroid/telephony/TelephonyManager;

    .line 68
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 70
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 72
    move-result p4

    .line 75
    iput-boolean p4, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mHasVoiceCallingFeature:Z

    .line 76
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    .line 78
    move-result p3

    .line 81
    iput p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mPhoneCount:I

    .line 82
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 84
    move-result-object p3

    .line 87
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 88
    const-string p3, "00000"

    .line 90
    invoke-virtual {p0, p3}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->getResourcesForOperation(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 92
    move-result-object p3

    .line 95
    iput-object p3, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 96
    check-cast p2, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 98
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 100
    const-string p2, "persist.sys.cota.carrier"

    .line 103
    const-string p3, ""

    .line 105
    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 110
    iput-object p2, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    .line 111
    new-instance p2, Landroid/content/IntentFilter;

    .line 113
    const-string p3, "com.android.updater.action.COTA_CARRIER"

    .line 115
    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance p3, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$1;

    .line 120
    invoke-direct {p3, p0}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$1;-><init>(Lcom/android/systemui/MiuiOperatorCustomizedPolicy;)V

    .line 122
    const/4 p0, 0x2

    .line 125
    invoke-virtual {p1, p3, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 126
    return-void
    .line 129
.end method


# virtual methods
.method public final getMiuiOperatorConfig(I)Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperatorConfigs:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    check-cast p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;

    .line 14
    return-object p0

    .line 16
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->updateMiuiOperatorConfig(I)Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method

.method public final getResourcesForOperation(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mContext:Landroid/content/Context;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    move-result-object v0

    .line 22
    new-instance v1, Landroid/content/res/Configuration;

    .line 23
    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 25
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 28
    const/4 v0, 0x0

    .line 31
    const/4 v2, 0x3

    .line 32
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 37
    move-result v0

    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 45
    move-result p1

    .line 48
    iput v0, v1, Landroid/content/res/Configuration;->mcc:I

    .line 49
    iput p1, v1, Landroid/content/res/Configuration;->mnc:I

    .line 51
    if-nez p1, :cond_1

    .line 53
    const p1, 0xffff

    .line 55
    iput p1, v1, Landroid/content/res/Configuration;->mnc:I

    .line 58
    :cond_1
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 64
    move-result-object p0

    .line 67
    return-object p0
    .line 68
.end method

.method public final initResource()V
    .locals 8

    .line 1
    const-string v0, "persist.sys.cota.carrier"

    .line 2
    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 12
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperatorConfigs:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 19
    iget-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperators:Landroid/util/SparseArray;

    .line 22
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 27
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    .line 29
    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    move-result v1

    .line 36
    iput v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNumberCards:I

    .line 37
    iget v1, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mPhoneCount:I

    .line 39
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :goto_0
    if-ge v3, v1, :cond_5

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 45
    move-result v4

    .line 48
    const/4 v5, 0x0

    .line 49
    if-lez v4, :cond_1

    .line 50
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object v4

    .line 55
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v6

    .line 59
    if-eqz v6, :cond_1

    .line 60
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v6

    .line 65
    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 66
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 68
    move-result v7

    .line 71
    if-ne v7, v3, :cond_0

    .line 72
    move-object v5, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    if-eqz v5, :cond_4

    .line 76
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 84
    move-result v4

    .line 87
    const/4 v6, 0x3

    .line 88
    if-ne v4, v6, :cond_2

    .line 89
    const/4 v4, 0x1

    .line 91
    goto :goto_2

    .line 92
    :cond_2
    move v4, v2

    .line 93
    :goto_2
    if-eqz v4, :cond_3

    .line 94
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    .line 96
    move-result-object v4

    .line 99
    if-eqz v4, :cond_3

    .line 100
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    .line 102
    move-result-object v4

    .line 105
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    .line 106
    move-result-object v5

    .line 109
    invoke-static {v4, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v4

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mPhone:Landroid/telephony/TelephonyManager;

    .line 115
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    .line 117
    move-result-object v4

    .line 120
    goto :goto_3

    .line 121
    :cond_4
    const-string v4, "00000"

    .line 122
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperators:Landroid/util/SparseArray;

    .line 124
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 126
    invoke-virtual {p0, v4}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->getResourcesForOperation(Ljava/lang/String;)Landroid/content/res/Resources;

    .line 129
    move-result-object v4

    .line 132
    iget-object v5, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 133
    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    invoke-virtual {p0, v3}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->updateMiuiOperatorConfig(I)Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;

    .line 138
    add-int/lit8 v3, v3, 0x1

    .line 141
    goto :goto_0

    .line 143
    :cond_5
    return-void
    .line 144
.end method

.method public final onDeviceProvisionedChanged()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;-><init>(Lcom/android/systemui/MiuiOperatorCustomizedPolicy;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mBgHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final onUserSetupChanged()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$updateCota$1;-><init>(Lcom/android/systemui/MiuiOperatorCustomizedPolicy;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mBgHandler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final showVowifiQS(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 2
    const v1, 0x7f0500a4    # @bool/show_vowifi_qs 'false'

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 7
    move-result v0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 11
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Landroid/content/res/Resources;

    .line 24
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 26
    move-result p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p0, v3

    .line 31
    :goto_0
    if-nez v0, :cond_1

    .line 32
    if-eqz p0, :cond_2

    .line 34
    :cond_1
    const/4 v3, 0x1

    .line 36
    :cond_2
    return v3
    .line 37
.end method

.method public final updateMiuiOperatorConfig(I)Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperators:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    const-string v3, "00000"

    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v5

    .line 17
    iget-object v2, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperators:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 20
    move-result v3

    .line 23
    if-nez v3, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Ljava/lang/CharSequence;

    .line 31
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_1

    .line 37
    :goto_0
    const/4 v6, 0x0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object v2

    .line 44
    iget-object v3, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->CT_SIM_MCC_MNC:[Ljava/lang/String;

    .line 45
    invoke-static {v3, v2}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result v2

    .line 50
    move v6, v2

    .line 51
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 52
    const v3, 0x7f0500a8    # @bool/status_bar_hide_volte 'false'

    .line 54
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 57
    move-result v2

    .line 60
    iget-object v7, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperators:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v7

    .line 66
    check-cast v7, Ljava/lang/String;

    .line 67
    const/4 v8, 0x1

    .line 69
    if-eqz v7, :cond_3

    .line 70
    const-string v9, "26003"

    .line 72
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v9

    .line 77
    if-nez v9, :cond_2

    .line 78
    const-string v9, "2603"

    .line 80
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v7

    .line 85
    if-eqz v7, :cond_3

    .line 86
    :cond_2
    const-string v7, "OR"

    .line 88
    iget-object v9, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    .line 90
    invoke-static {v7, v9}, Lkotlin/text/StringsKt__StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 92
    move-result v7

    .line 95
    if-eqz v7, :cond_3

    .line 96
    move v3, v8

    .line 98
    goto :goto_2

    .line 99
    :cond_3
    iget-object v7, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 100
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v7

    .line 105
    if-eqz v7, :cond_4

    .line 106
    iget-object v7, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 108
    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 110
    move-result-object v7

    .line 113
    check-cast v7, Landroid/content/res/Resources;

    .line 114
    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 116
    move-result v3

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    const/4 v3, 0x0

    .line 121
    :goto_2
    if-nez v2, :cond_6

    .line 122
    if-nez v3, :cond_6

    .line 124
    iget-boolean v2, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mHasVoiceCallingFeature:Z

    .line 126
    if-nez v2, :cond_5

    .line 128
    goto :goto_3

    .line 130
    :cond_5
    const/4 v7, 0x0

    .line 131
    goto :goto_4

    .line 132
    :cond_6
    :goto_3
    move v7, v8

    .line 133
    :goto_4
    iget-object v2, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 134
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 136
    move-result-object v3

    .line 139
    if-eqz v3, :cond_7

    .line 140
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 142
    move-result-object v2

    .line 145
    check-cast v2, Landroid/content/res/Resources;

    .line 146
    const v3, 0x7f0500a9    # @bool/status_bar_hide_vowifi_mcc_mnc 'false'

    .line 148
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 151
    move-result v2

    .line 154
    goto :goto_5

    .line 155
    :cond_7
    const/4 v2, 0x0

    .line 156
    :goto_5
    if-nez v2, :cond_9

    .line 157
    iget-boolean v2, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mHasVoiceCallingFeature:Z

    .line 159
    if-nez v2, :cond_8

    .line 161
    goto :goto_6

    .line 163
    :cond_8
    const/4 v2, 0x0

    .line 164
    goto :goto_7

    .line 165
    :cond_9
    :goto_6
    move v2, v8

    .line 166
    :goto_7
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 167
    const v9, 0x7f0b0107    # @integer/status_bar_volte_drawable_type '0'

    .line 169
    const v10, 0x7f0b0051    # @integer/customized_status_bar_volte_drawable_type '-1'

    .line 172
    const v11, 0x7f0818a6    # @drawable/stat_sys_signal_hd_big 'res/drawable/stat_sys_signal_hd_big.xml'

    .line 175
    const/4 v12, 0x2

    .line 178
    const/4 v13, -0x1

    .line 179
    if-nez v3, :cond_a

    .line 180
    goto :goto_8

    .line 182
    :cond_a
    iget-object v3, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 183
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 185
    move-result v3

    .line 188
    if-ne v3, v13, :cond_b

    .line 189
    iget-object v14, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 191
    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 193
    move-result-object v15

    .line 196
    if-eqz v15, :cond_b

    .line 197
    invoke-virtual {v14, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 199
    move-result-object v3

    .line 202
    check-cast v3, Landroid/content/res/Resources;

    .line 203
    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 205
    move-result v3

    .line 208
    :cond_b
    if-eq v3, v8, :cond_f

    .line 209
    if-eq v3, v12, :cond_e

    .line 211
    const/4 v14, 0x3

    .line 213
    if-eq v3, v14, :cond_d

    .line 214
    const/4 v14, 0x4

    .line 216
    if-eq v3, v14, :cond_c

    .line 217
    const v3, 0x7f0818b8    # @drawable/stat_sys_signal_volte 'res/drawable/stat_sys_signal_volte.xml'

    .line 219
    goto :goto_9

    .line 222
    :cond_c
    :goto_8
    move v3, v11

    .line 223
    goto :goto_9

    .line 224
    :cond_d
    const v3, 0x7f0818bd    # @drawable/stat_sys_signal_volte_hd_voice 'res/drawable/stat_sys_signal_volte_hd_voice.xml'

    .line 225
    goto :goto_9

    .line 228
    :cond_e
    const v3, 0x7f0818c0    # @drawable/stat_sys_signal_volte_no_frame 'res/drawable/stat_sys_signal_volte_no_frame.xml'

    .line 229
    goto :goto_9

    .line 232
    :cond_f
    const v3, 0x7f0818b9    # @drawable/stat_sys_signal_volte_4g 'res/drawable/stat_sys_signal_volte_4g.xml'

    .line 233
    :goto_9
    iget-object v14, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 236
    const v15, 0x7f0b0052    # @integer/customized_status_bar_vowifi_drawable_type '-1'

    .line 238
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 241
    move-result v14

    .line 244
    if-ne v14, v13, :cond_10

    .line 245
    iget-object v15, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 247
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 249
    move-result-object v16

    .line 252
    if-eqz v16, :cond_10

    .line 253
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 255
    move-result-object v14

    .line 258
    check-cast v14, Landroid/content/res/Resources;

    .line 259
    const v15, 0x7f0b0108    # @integer/status_bar_vowifi_drawable_type '0'

    .line 261
    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    .line 264
    move-result v14

    .line 267
    :cond_10
    if-eq v14, v8, :cond_12

    .line 268
    if-eq v14, v12, :cond_11

    .line 270
    const v14, 0x7f081900    # @drawable/stat_sys_vowifi 'res/drawable/stat_sys_vowifi.xml'

    .line 272
    goto :goto_b

    .line 275
    :cond_11
    const v14, 0x7f08190c    # @drawable/stat_sys_vowifi_wifi 'res/drawable/stat_sys_vowifi_wifi.xml'

    .line 276
    goto :goto_b

    .line 279
    :cond_12
    iget v14, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNumberCards:I

    .line 280
    if-ne v14, v12, :cond_15

    .line 282
    if-eqz v1, :cond_14

    .line 284
    if-eq v1, v8, :cond_13

    .line 286
    goto :goto_a

    .line 288
    :cond_13
    const v14, 0x7f081905    # @drawable/stat_sys_vowifi_call_2 'res/drawable/stat_sys_vowifi_call_2.xml'

    .line 289
    goto :goto_b

    .line 292
    :cond_14
    const v14, 0x7f081902    # @drawable/stat_sys_vowifi_call_1 'res/drawable/stat_sys_vowifi_call_1.xml'

    .line 293
    goto :goto_b

    .line 296
    :cond_15
    :goto_a
    const v14, 0x7f081901    # @drawable/stat_sys_vowifi_call 'res/drawable/stat_sys_vowifi_call.xml'

    .line 297
    :goto_b
    sget-boolean v15, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 300
    if-nez v15, :cond_16

    .line 302
    goto :goto_d

    .line 304
    :cond_16
    iget-object v11, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 305
    invoke-virtual {v11, v10}, Landroid/content/res/Resources;->getInteger(I)I

    .line 307
    move-result v10

    .line 310
    if-ne v10, v13, :cond_17

    .line 311
    iget-object v11, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 313
    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 315
    move-result-object v13

    .line 318
    if-eqz v13, :cond_17

    .line 319
    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 321
    move-result-object v10

    .line 324
    check-cast v10, Landroid/content/res/Resources;

    .line 325
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getInteger(I)I

    .line 327
    move-result v10

    .line 330
    :cond_17
    if-eq v10, v8, :cond_18

    .line 331
    if-eq v10, v12, :cond_18

    .line 333
    const v9, 0x7f0818c4    # @drawable/stat_sys_signal_vonr 'res/drawable/stat_sys_signal_vonr.xml'

    .line 335
    goto :goto_c

    .line 338
    :cond_18
    const v9, 0x7f0818c6    # @drawable/stat_sys_signal_vonr_no_frame 'res/drawable/stat_sys_signal_vonr_no_frame.xml'

    .line 339
    :goto_c
    move v11, v9

    .line 342
    :goto_d
    iget-object v9, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 343
    const v10, 0x7f0500aa    # @bool/status_bar_separate_data_and_voice 'false'

    .line 345
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 348
    move-result v12

    .line 351
    iget-object v9, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 352
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 354
    move-result-object v10

    .line 357
    if-eqz v10, :cond_19

    .line 358
    invoke-virtual {v9, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 360
    move-result-object v9

    .line 363
    check-cast v9, Landroid/content/res/Resources;

    .line 364
    const v10, 0x7f0500ad    # @bool/status_bar_show_mobile_type_when_wifi_on 'false'

    .line 366
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 369
    move-result v9

    .line 372
    goto :goto_e

    .line 373
    :cond_19
    const/4 v9, 0x0

    .line 374
    :goto_e
    sget-boolean v10, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 375
    if-eqz v10, :cond_1b

    .line 377
    if-eqz v9, :cond_1a

    .line 379
    goto :goto_f

    .line 381
    :cond_1a
    const/4 v13, 0x0

    .line 382
    goto :goto_10

    .line 383
    :cond_1b
    :goto_f
    move v13, v8

    .line 384
    :goto_10
    iget-object v9, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 385
    const v10, 0x7f0500ac    # @bool/status_bar_show_mobile_type_in_mms 'false'

    .line 387
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 390
    move-result v9

    .line 393
    iget-object v15, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 394
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 396
    move-result-object v16

    .line 399
    if-eqz v16, :cond_1c

    .line 400
    invoke-virtual {v15, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 402
    move-result-object v15

    .line 405
    check-cast v15, Landroid/content/res/Resources;

    .line 406
    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 408
    move-result v10

    .line 411
    goto :goto_11

    .line 412
    :cond_1c
    const/4 v10, 0x0

    .line 413
    :goto_11
    if-nez v9, :cond_1e

    .line 414
    if-eqz v10, :cond_1d

    .line 416
    goto :goto_12

    .line 418
    :cond_1d
    const/4 v15, 0x0

    .line 419
    goto :goto_13

    .line 420
    :cond_1e
    :goto_12
    move v15, v8

    .line 421
    :goto_13
    iget-object v9, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 422
    const v10, 0x7f05005f    # @bool/config_show_data_type_left_single 'false'

    .line 424
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 427
    move-result v16

    .line 430
    iget-object v9, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 431
    const v10, 0x7f0500ae    # @bool/status_bar_show_spn_when_airplane 'false'

    .line 433
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 436
    move-result v9

    .line 439
    iget-object v4, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 440
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 442
    move-result-object v18

    .line 445
    if-eqz v18, :cond_1f

    .line 446
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 448
    move-result-object v4

    .line 451
    check-cast v4, Landroid/content/res/Resources;

    .line 452
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 454
    move-result v4

    .line 457
    goto :goto_14

    .line 458
    :cond_1f
    const/4 v4, 0x0

    .line 459
    :goto_14
    if-nez v9, :cond_21

    .line 460
    if-eqz v4, :cond_20

    .line 462
    goto :goto_15

    .line 464
    :cond_20
    const/16 v18, 0x0

    .line 465
    goto :goto_16

    .line 467
    :cond_21
    :goto_15
    move/from16 v18, v8

    .line 468
    :goto_16
    iget-object v4, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 470
    const v9, 0x7f0500a7    # @bool/status_bar_hide_national_roaming 'false'

    .line 472
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 475
    move-result v4

    .line 478
    iget-object v10, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 479
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 481
    move-result-object v19

    .line 484
    if-eqz v19, :cond_22

    .line 485
    invoke-virtual {v10, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 487
    move-result-object v10

    .line 490
    check-cast v10, Landroid/content/res/Resources;

    .line 491
    invoke-virtual {v10, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 493
    move-result v9

    .line 496
    goto :goto_17

    .line 497
    :cond_22
    const/4 v9, 0x0

    .line 498
    :goto_17
    if-nez v4, :cond_24

    .line 499
    if-eqz v9, :cond_23

    .line 501
    goto :goto_18

    .line 503
    :cond_23
    const/16 v19, 0x0

    .line 504
    goto :goto_19

    .line 506
    :cond_24
    :goto_18
    move/from16 v19, v8

    .line 507
    :goto_19
    iget-object v4, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mMccMncResouresArray:Landroid/util/SparseArray;

    .line 509
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 511
    move-result-object v4

    .line 514
    check-cast v4, Landroid/content/res/Resources;

    .line 515
    const/16 v9, 0xd

    .line 517
    new-array v10, v9, [Ljava/lang/String;

    .line 519
    const/4 v8, 0x0

    .line 521
    :goto_1a
    if-ge v8, v9, :cond_25

    .line 522
    const-string v21, ""

    .line 524
    aput-object v21, v10, v8

    .line 526
    add-int/lit8 v8, v8, 0x1

    .line 528
    goto :goto_1a

    .line 530
    :cond_25
    const v8, 0x7f030070    # @array/data_type_name_default_key

    .line 531
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 534
    move-result-object v8

    .line 537
    const v9, 0x7f030071    # @array/data_type_name_default_value

    .line 538
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 541
    move-result-object v9

    .line 544
    array-length v1, v8

    .line 545
    const/4 v0, 0x0

    .line 546
    :goto_1b
    if-ge v0, v1, :cond_27

    .line 547
    move/from16 v22, v1

    .line 549
    aget v1, v8, v0

    .line 551
    move-object/from16 v23, v8

    .line 553
    if-ltz v1, :cond_26

    .line 555
    const/16 v8, 0xd

    .line 557
    if-ge v1, v8, :cond_26

    .line 559
    array-length v8, v9

    .line 561
    if-ge v0, v8, :cond_26

    .line 562
    aget-object v8, v9, v0

    .line 564
    aput-object v8, v10, v1

    .line 566
    :cond_26
    add-int/lit8 v0, v0, 0x1

    .line 568
    move/from16 v1, v22

    .line 570
    move-object/from16 v8, v23

    .line 572
    goto :goto_1b

    .line 574
    :cond_27
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    .line 575
    if-eqz v0, :cond_28

    .line 577
    const-string v0, "2G"

    .line 579
    const/4 v1, 0x1

    .line 581
    aput-object v0, v10, v1

    .line 582
    :cond_28
    const v0, 0x7f030072    # @array/data_type_name_mcc_key

    .line 584
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 587
    move-result-object v0

    .line 590
    const v1, 0x7f030075    # @array/data_type_name_mcc_value

    .line 591
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 594
    move-result-object v1

    .line 597
    array-length v8, v0

    .line 598
    const/4 v9, 0x0

    .line 599
    :goto_1c
    if-ge v9, v8, :cond_2a

    .line 600
    move/from16 v20, v8

    .line 602
    aget v8, v0, v9

    .line 604
    move-object/from16 v22, v0

    .line 606
    if-ltz v8, :cond_29

    .line 608
    const/16 v0, 0xd

    .line 610
    if-ge v8, v0, :cond_29

    .line 612
    array-length v0, v1

    .line 614
    if-ge v9, v0, :cond_29

    .line 615
    aget-object v0, v1, v9

    .line 617
    aput-object v0, v10, v8

    .line 619
    :cond_29
    add-int/lit8 v9, v9, 0x1

    .line 621
    move/from16 v8, v20

    .line 623
    move-object/from16 v0, v22

    .line 625
    goto :goto_1c

    .line 627
    :cond_2a
    const v0, 0x7f030073    # @array/data_type_name_mcc_mnc_key

    .line 628
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 631
    move-result-object v0

    .line 634
    const v1, 0x7f030074    # @array/data_type_name_mcc_mnc_value

    .line 635
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 638
    move-result-object v1

    .line 641
    array-length v8, v0

    .line 642
    const/4 v9, 0x0

    .line 643
    :goto_1d
    if-ge v9, v8, :cond_2c

    .line 644
    move/from16 v20, v8

    .line 646
    aget v8, v0, v9

    .line 648
    move-object/from16 v22, v0

    .line 650
    if-ltz v8, :cond_2b

    .line 652
    const/16 v0, 0xd

    .line 654
    if-ge v8, v0, :cond_2b

    .line 656
    array-length v0, v1

    .line 658
    if-ge v9, v0, :cond_2b

    .line 659
    aget-object v0, v1, v9

    .line 661
    aput-object v0, v10, v8

    .line 663
    :cond_2b
    add-int/lit8 v9, v9, 0x1

    .line 665
    move/from16 v8, v20

    .line 667
    move-object/from16 v0, v22

    .line 669
    goto :goto_1d

    .line 671
    :cond_2c
    const v0, 0x7f03006e    # @array/data_type_name_cus_reg_key

    .line 672
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    .line 675
    move-result-object v0

    .line 678
    const v1, 0x7f03006f    # @array/data_type_name_cus_reg_value

    .line 679
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    .line 682
    move-result-object v1

    .line 685
    array-length v4, v0

    .line 686
    const/4 v8, 0x0

    .line 687
    :goto_1e
    if-ge v8, v4, :cond_2e

    .line 688
    aget v9, v0, v8

    .line 690
    move-object/from16 v17, v0

    .line 692
    if-ltz v9, :cond_2d

    .line 694
    const/16 v0, 0xd

    .line 696
    if-ge v9, v0, :cond_2d

    .line 698
    array-length v0, v1

    .line 700
    if-ge v8, v0, :cond_2d

    .line 701
    aget-object v0, v1, v8

    .line 703
    aput-object v0, v10, v9

    .line 705
    :cond_2d
    add-int/lit8 v8, v8, 0x1

    .line 707
    move-object/from16 v0, v17

    .line 709
    goto :goto_1e

    .line 711
    :cond_2e
    new-instance v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;

    .line 712
    move-object v4, v0

    .line 714
    move v8, v2

    .line 715
    move v9, v3

    .line 716
    move-object v1, v10

    .line 717
    move v10, v14

    .line 718
    move v14, v15

    .line 719
    move/from16 v15, v16

    .line 720
    move/from16 v16, v18

    .line 722
    move/from16 v17, v19

    .line 724
    move-object/from16 v18, v1

    .line 726
    invoke-direct/range {v4 .. v18}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;-><init>(ZZZZIIIZZZZZZ[Ljava/lang/String;)V

    .line 728
    invoke-virtual {v0}, Lcom/android/systemui/MiuiOperatorCustomizedPolicy$MiuiOperatorConfig;->toString()Ljava/lang/String;

    .line 731
    move-object/from16 v1, p0

    .line 734
    iget-object v1, v1, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mOperatorConfigs:Landroid/util/SparseArray;

    .line 736
    move/from16 v2, p1

    .line 738
    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 740
    return-object v0
    .line 743
.end method
