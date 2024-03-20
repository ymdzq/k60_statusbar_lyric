.class public Lcom/android/settings/network/telephony/NetworkScanHelper;
.super Ljava/lang/Object;
.source "NetworkScanHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;,
        Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;
    }
.end annotation


# static fields
.field static final INCREMENTAL_RESULTS:Z = true

.field static final INCREMENTAL_RESULTS_PERIODICITY_SEC:I = 0x3

.field static final MAX_SEARCH_TIME_SEC:I = 0xfe

.field static final SEARCH_PERIODICITY_SEC:I = 0x5


# instance fields
.field private filter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private final mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

.field private mLegacyIncrScanReceiver:Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

.field private mMaxSearchTimeSec:I

.field private final mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

.field private mNetworkScanRequester:Landroid/telephony/NetworkScan;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$eqrp2HdYHaktdJkJqYcgLcIGafc(I)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->lambda$hasNrSaCapability$0(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monComplete(Lcom/android/settings/network/telephony/NetworkScanHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onComplete()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monError(Lcom/android/settings/network/telephony/NetworkScanHelper;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onError(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monResults(Lcom/android/settings/network/telephony/NetworkScanHelper;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onResults(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 157
    invoke-direct {p0, p2, p3, p4}, Lcom/android/settings/network/telephony/NetworkScanHelper;-><init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V

    .line 158
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$integer;->config_network_scan_helper_max_search_time_sec:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mMaxSearchTimeSec:I

    .line 161
    new-instance p1, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

    iget-object p2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    invoke-direct {p1, p2, p3}, Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;-><init>(Landroid/content/Context;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mLegacyIncrScanReceiver:Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

    .line 163
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-void
.end method

.method public constructor <init>(Landroid/telephony/TelephonyManager;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfe

    .line 140
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mMaxSearchTimeSec:I

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "qualcomm.intent.action.ACTION_INCREMENTAL_NW_SCAN_IND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->filter:Landroid/content/IntentFilter;

    .line 149
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 150
    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    .line 151
    new-instance p1, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl;-><init>(Lcom/android/settings/network/telephony/NetworkScanHelper;Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallbackImpl-IA;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 152
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private hasNrSaCapability()Z
    .locals 1

    .line 300
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 301
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCapability()Landroid/telephony/PhoneCapability;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/PhoneCapability;->getDeviceNrCapabilities()[I

    move-result-object p0

    .line 300
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/NetworkScanHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/NetworkScanHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 302
    invoke-interface {p0, v0}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$hasNrSaCapability$0(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onComplete()V
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onComplete()V

    return-void
.end method

.method private onError(I)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onError(I)V

    return-void
.end method

.method private onResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 288
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanCallback:Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;

    invoke-interface {p0, p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanCallback;->onResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method createNetworkScanForPreferredAccessNetworks()Landroid/telephony/NetworkScanRequest;
    .locals 9

    .line 168
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPreferredNetworkTypeBitmask()J

    move-result-wide v0

    const-wide/32 v2, 0xdd387

    and-long/2addr v0, v2

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-wide/32 v7, 0x804b

    and-long/2addr v7, v0

    cmp-long v7, v7, v3

    if-eqz v7, :cond_1

    .line 177
    :cond_0
    new-instance v7, Landroid/telephony/RadioAccessSpecifier;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v6, v6}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v5, :cond_2

    const-wide/32 v7, 0x16bb4

    and-long/2addr v7, v0

    cmp-long v7, v7, v3

    if-eqz v7, :cond_3

    .line 182
    :cond_2
    new-instance v7, Landroid/telephony/RadioAccessSpecifier;

    const/4 v8, 0x2

    invoke-direct {v7, v8, v6, v6}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v5, :cond_4

    const-wide/32 v7, 0x61000

    and-long/2addr v7, v0

    cmp-long v7, v7, v3

    if-eqz v7, :cond_5

    .line 187
    :cond_4
    new-instance v7, Landroid/telephony/RadioAccessSpecifier;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v6, v6}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v5, :cond_6

    .line 196
    invoke-direct {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->hasNrSaCapability()Z

    move-result v5

    if-eqz v5, :cond_7

    const-wide/32 v7, 0x80000

    and-long/2addr v0, v7

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7

    .line 198
    :cond_6
    new-instance v0, Landroid/telephony/RadioAccessSpecifier;

    const/4 v1, 0x6

    invoke-direct {v0, v1, v6, v6}, Landroid/telephony/RadioAccessSpecifier;-><init>(I[I[I)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "NetworkScanHelper"

    const-string/jumbo v1, "radioAccessSpecifiers add NGRAN."

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_7
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCagSnpnEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 207
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 208
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result p0

    .line 207
    invoke-static {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getAccessMode(Landroid/content/Context;I)I

    :cond_8
    return-object v6
.end method

.method public startNetworkScan(I)V
    .locals 4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startNetworkScan: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScanHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/16 v2, 0x2710

    if-ne p1, v0, :cond_1

    .line 240
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    if-eqz p1, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkScanHelper;->createNetworkScanForPreferredAccessNetworks()Landroid/telephony/NetworkScanRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mInternalNetworkScanCallback:Landroid/telephony/TelephonyScanManager$NetworkScanCallback;

    .line 243
    invoke-virtual {p1, v0, v1, v3}, Landroid/telephony/TelephonyManager;->requestNetworkScan(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    if-nez p1, :cond_2

    .line 248
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onError(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 251
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mLegacyIncrScanReceiver:Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 252
    iget-object p1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 253
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    .line 252
    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/TelephonyUtils;->performIncrementalScan(Landroid/content/Context;I)Z

    move-result p1

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "success: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    .line 256
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/NetworkScanHelper;->onError(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopNetworkQuery()V
    .locals 3

    const-string v0, "NetworkScanHelper"

    .line 267
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {v1}, Landroid/telephony/NetworkScan;->stopScan()V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mNetworkScanRequester:Landroid/telephony/NetworkScan;

    goto :goto_1

    .line 272
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    if-ltz v1, :cond_1

    .line 273
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 274
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/settings/network/telephony/TelephonyUtils;->abortIncrementalScan(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "slotIndex is invalid, skipping abort"

    .line 276
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkScanHelper;->mLegacyIncrScanReceiver:Lcom/android/settings/network/telephony/LegacyIncrementalScanBroadcastReceiver;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "IllegalArgumentException"

    .line 282
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "abortIncrementalScan Exception: "

    .line 280
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
