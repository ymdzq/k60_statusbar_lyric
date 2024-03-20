.class public Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "AutoSelectPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Lcom/android/settings/network/telephony/gsm/SelectNetworkPreferenceController$OnNetworkScanTypeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;
    }
.end annotation


# static fields
.field private static final INTERNAL_LOG_TAG_AFTERSET:Ljava/lang/String; = "AfterSet"

.field private static final INTERNAL_LOG_TAG_INIT:Ljava/lang/String; = "Init"

.field private static final LOG_TAG:Ljava/lang/String; = "AutoSelectPreferenceController"

.field private static final MINIMUM_DIALOG_TIME_MILLIS:J

.field private static final TAG:Ljava/lang/String; = "AutoSelectPreferenceController"


# instance fields
.field private mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

.field private mCacheOfModeStatus:I

.field private mClient:Lcom/qti/extphone/Client;

.field protected mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

.field private mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mOnlyAutoSelectInHome:Z

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

.field private mServiceConnected:Z

.field mServiceStateStatus:Lcom/android/settings/network/helper/ServiceStateStatus;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field mSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUiHandler:Landroid/os/Handler;

.field private mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$7WzjVj07ThyeIi_jXjS-_X4eIAc(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setAutomaticSelectionMode$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$JLwBcQQHLGnXNYNO5pwIJye4qh8(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$init$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$OfcezGAqQUCZBLeb5MqfcWIvD_s(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setAutomaticSelectionMode$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$WVlZCj4hUsleF1mHtw7ncNJLScQ(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$idnAvzOoNR66OuIabP1SjvsBqAs(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$init$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$qkCT1Zsnk-MsKrnKg_bY84cETJw(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setAutomaticSelectionMode$4(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$vuDIBiXMKxoosZkFG9GYtlLDBoE(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->lambda$setAutomaticSelectionMode$3()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Lcom/qti/extphone/Client;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mClient:Lcom/qti/extphone/Client;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmExtTelephonyManager(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Lcom/qti/extphone/ExtTelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLock(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceConnected(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mServiceConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCacheOfModeStatus(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmClient(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Lcom/qti/extphone/Client;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mClient:Lcom/qti/extphone/Client;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceConnected(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mServiceConnected:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 89
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME_MILLIS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 113
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mLock:Ljava/lang/Object;

    .line 345
    new-instance p2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$2;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 366
    new-instance p2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$3;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mExtPhoneCallbackListener:Lcom/qti/extphone/ExtPhoneCallbackListener;

    .line 118
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 p2, -0x1

    .line 120
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 121
    new-instance p2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    .line 122
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    .line 123
    iput p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    .line 124
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    .line 125
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    .line 126
    new-instance v0, Lcom/android/settings/network/AllowedNetworkTypesListener;

    new-instance v1, Landroid/os/HandlerExecutor;

    invoke-direct {v1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Lcom/android/settings/network/AllowedNetworkTypesListener;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    .line 128
    new-instance p2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda5;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-virtual {v0, p2}, Lcom/android/settings/network/AllowedNetworkTypesListener;->setAllowedNetworkTypesListener(Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;)V

    .line 130
    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private dismissProgressBar()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private getNetworkSelectionMode()V
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x0

    const-string v2, "AutoSelectPreferenceController"

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 194
    invoke-virtual {v0, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkSelectionMode invalid sub ID "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iput v1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    return-void

    .line 199
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mServiceConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mClient:Lcom/qti/extphone/Client;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 200
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v0

    const v3, 0x7fffffff

    if-eq v0, v3, :cond_1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 203
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSlotIndex()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mClient:Lcom/qti/extphone/Client;

    .line 202
    invoke-virtual {v0, v1, v3}, Lcom/qti/extphone/ExtTelephonyManager;->getNetworkSelectionMode(ILcom/qti/extphone/Client;)Lcom/qti/extphone/Token;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getNetworkSelectionMode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 213
    :cond_1
    iput v1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    :goto_1
    return-void
.end method

.method private synthetic lambda$init$5()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 336
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 338
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateListenerValue()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$6()V
    .locals 2

    const-string v0, "Init"

    .line 331
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->queryNetworkSelectionMode(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updatePreference()V

    return-void
.end method

.method private synthetic lambda$setAutomaticSelectionMode$1()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 289
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 290
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 294
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateListenerValue()V

    .line 295
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->dismissProgressBar()V

    return-void
.end method

.method private synthetic lambda$setAutomaticSelectionMode$2()V
    .locals 2

    const-string v0, "AfterSet"

    .line 284
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->queryNetworkSelectionMode(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$setAutomaticSelectionMode$3()V
    .locals 1

    .line 283
    new-instance v0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic lambda$setAutomaticSelectionMode$4(J)V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->setNetworkSelectionModeAutomatic()V

    .line 277
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 282
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda6;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    sget-wide v2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->MINIMUM_DIALOG_TIME_MILLIS:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    .line 298
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 282
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private queryNetworkSelectionMode(Ljava/lang/String;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": query command done. mCacheOfModeStatus: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AutoSelectPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showAutoSelectProgressBar()V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 429
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 430
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->register_automatically:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 435
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method private updateListenerValue()V
    .locals 3

    .line 421
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;

    .line 422
    iget v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    invoke-interface {v1, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;->onNetworkSelectModeUpdated(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 144
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 145
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    :cond_1
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 170
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 171
    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->shouldDisplayNetworkSelectOptions(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;
    .locals 3

    .line 306
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 307
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 308
    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 309
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 310
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {p2, v0}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 311
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 312
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 313
    invoke-static {p2}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p2, v0}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string/jumbo v0, "only_auto_select_in_home_network"

    .line 315
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 317
    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    .line 319
    new-instance p2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$1;

    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-direct {p2, p0, p1, v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$1;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;Landroidx/lifecycle/Lifecycle;Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mServiceStateStatus:Lcom/android/settings/network/helper/ServiceStateStatus;

    .line 330
    new-instance p1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-object p0
.end method

.method public isChecked()Z
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isCagSnpnEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->getNetworkSelectionMode()V

    .line 181
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkSelectionMode()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;

    .line 186
    iget v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    invoke-interface {v1, v2}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$OnNetworkSelectModeListener;->onNetworkSelectModeUpdated(I)V

    goto :goto_1

    .line 189
    :cond_1
    iget p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public on4gLteUpdated()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onNetworkScanTypeChanged(I)V
    .locals 2

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNetworkScanTypeChanged type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoSelectPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->setChecked(Z)Z

    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/AllowedNetworkTypesListener;->register(Landroid/content/Context;I)V

    .line 152
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/AllowedNetworkTypesListener;->unregister(Landroid/content/Context;I)V

    .line 158
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method setAutomaticSelectionMode()Ljava/util/concurrent/Future;
    .locals 4

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 268
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->showAutoSelectProgressBar()V

    .line 269
    iget-object v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 270
    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 271
    iget-object v2, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 273
    :cond_0
    new-instance v2, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;J)V

    invoke-static {v2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoSelectPreferenceController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->setAutomaticSelectionMode()Ljava/util/concurrent/Future;

    goto :goto_0

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_2

    .line 255
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$NetworkSelectActivity"

    .line 256
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.provider.extra.SUB_ID"

    .line 258
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 219
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 v0, 0x0

    .line 220
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 223
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 232
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 235
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 236
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mOnlyAutoSelectInHome:Z

    if-eqz v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->manual_mode_disallowed_summary:I

    iget-object p0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 239
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 237
    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method updateUiAutoSelectValue(Landroid/telephony/ServiceState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mUpdatingConfig:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3

    .line 404
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 407
    :goto_0
    iget v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    if-ne v0, p1, :cond_2

    return-void

    .line 410
    :cond_2
    iput p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateUiAutoSelectValue: mCacheOfModeStatus: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mCacheOfModeStatus:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoSelectPreferenceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 414
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 415
    iget-object p1, p0, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->mRecursiveUpdate:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->decrementAndGet()J

    .line 416
    invoke-direct {p0}, Lcom/android/settings/network/telephony/gsm/AutoSelectPreferenceController;->updateListenerValue()V

    :cond_3
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
