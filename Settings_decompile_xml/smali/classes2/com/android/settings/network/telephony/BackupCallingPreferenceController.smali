.class public Lcom/android/settings/network/telephony/BackupCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "BackupCallingPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;
    }
.end annotation


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "BackupCallingDialog"

.field private static final LOG_TAG:Ljava/lang/String; = "BackupCallingPrefCtrl"


# instance fields
.field private final PREFERENCE_KEY:Ljava/lang/String;

.field private mCallState:Ljava/lang/Integer;

.field private mContext:Landroid/content/Context;

.field private mCrossSimObserver:Landroid/database/ContentObserver;

.field private mCrossSimUri:Landroid/net/Uri;

.field mDialogNeeded:Z

.field private mDialogType:I

.field private mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

.field private mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field private mPreference:Landroidx/preference/Preference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private mServiceConnected:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyCallback:Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCrossSimUri(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreen(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroidx/preference/PreferenceScreen;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmServiceConnected(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mServiceConnected:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p2, "backup_calling_key"

    .line 72
    iput-object p2, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->PREFERENCE_KEY:Ljava/lang/String;

    const/4 p2, 0x0

    .line 80
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mServiceConnected:Z

    .line 85
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mDialogNeeded:Z

    .line 105
    new-instance p2, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$1;-><init>(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    .line 99
    invoke-static {p2}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 100
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mExtTelManagerServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {p2, v0}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    .line 101
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 102
    new-instance p1, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback-IA;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;

    return-void
.end method

.method private getActiveSubscriptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 410
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    .line 411
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 412
    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->getActiveSubscriptions(Landroid/telephony/SubscriptionManager;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;
    .locals 2

    .line 402
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 405
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/ImsManager;

    if-nez p0, :cond_1

    goto :goto_0

    .line 406
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private getLatestSummary(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 352
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/settings/network/SubscriptionUtil;->getUniqueSubscriptionDisplayName(Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    const-string p1, ""

    .line 351
    invoke-static {p0, p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSubscriptionInfoFromActiveList(I)Landroid/telephony/SubscriptionInfo;
    .locals 1

    .line 426
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getActiveSubscriptionList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getSubscriptionInfoFromList(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method private getSubscriptionInfoFromList(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)",
            "Landroid/telephony/SubscriptionInfo;"
        }
    .end annotation

    .line 417
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_0

    .line 418
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 186
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 187
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 189
    :cond_1
    iput-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private hasBackupCallingFeature(I)Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->isCrossSimEnabledByPlatform(Landroid/content/Context;I)Z

    move-result p0

    return p0
.end method

.method private isCiwlanIncompatibleNetworkSelected()Z
    .locals 7

    .line 291
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v1

    const-wide/32 v3, 0x41000

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-nez p0, :cond_0

    const-wide/32 v3, 0x80000

    and-long/2addr v1, v3

    cmp-long p0, v1, v5

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isDialogNeeded(Z)Z
    .locals 4

    .line 270
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanModeSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isInCiwlanOnlyMode()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    if-eqz p1, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->isCiwlanIncompatibleNetworkSelected()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 280
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDialogNeeded: isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCiwlanIncompatibleNetworkSelected = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackupCallingPrefCtrl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    if-eqz v0, :cond_3

    .line 283
    iput v1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mDialogType:I

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private registerCrossSimObserver()V
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$2;

    iget-object v1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$2;-><init>(Lcom/android/settings/network/telephony/BackupCallingPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimObserver:Landroid/database/ContentObserver;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method private showDialog(I)V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 298
    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 297
    invoke-static {v0, p1, v1}, Lcom/android/settings/network/telephony/BackupCallingDialogFragment;->newInstance(Ljava/lang/String;II)Lcom/android/settings/network/telephony/BackupCallingDialogFragment;

    move-result-object p1

    .line 299
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "BackupCallingDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private unregisterCrossSimObserver()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private updateSummary(Ljava/lang/String;)V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->backup_calling_setting_summary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 361
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 364
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz p1, :cond_0

    .line 236
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->hasBackupCallingFeature(I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getActiveSubscriptionList()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getSubscriptionInfoFromList(Ljava/util/List;I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 307
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 308
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mDialogNeeded:Z

    if-eqz p1, :cond_0

    .line 309
    iget p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mDialogType:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->showDialog(I)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;I)Lcom/android/settings/network/telephony/BackupCallingPreferenceController;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 135
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 136
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 137
    sget-object p1, Landroid/telephony/SubscriptionManager;->CROSS_SIM_ENABLED_CONTENT_URI:Landroid/net/Uri;

    iget p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 138
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCrossSimUri:Landroid/net/Uri;

    return-object p0
.end method

.method public isChecked()Z
    .locals 3

    .line 318
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 323
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsMmTelManager;->isCrossSimCallingEnabled()Z

    move-result p0
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "BackupCallingPrefCtrl"

    const-string v2, "Failed to get C_IWLAN status"

    .line 325
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method protected isCrossSimEnabledByPlatform(Landroid/content/Context;I)Z
    .locals 4

    .line 373
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mServiceConnected:Z

    const-string v1, "BackupCallingPrefCtrl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "ExtTelephony service is not connected"

    .line 374
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 379
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 380
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 379
    invoke-virtual {v0, v3}, Lcom/qti/extphone/ExtTelephonyManager;->isEpdgOverCellularDataSupported(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not supported by platform. subId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 391
    :cond_1
    new-instance v0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isWifiCallingSupported()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 392
    invoke-virtual {p0, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "carrier_cross_sim_ims_available_bool"

    .line 393
    invoke-virtual {p0, p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 397
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not supported by framework. subId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    .line 385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isEpdgOverCellularDataSupported Exception"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public bridge synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->unregisterCrossSimObserver()V

    .line 151
    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->unregister()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->registerCrossSimObserver()V

    .line 145
    iget-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;

    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController$PhoneTelephonyCallback;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public bridge synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public bridge synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 248
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->isDialogNeeded(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mDialogNeeded:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 251
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    if-nez p0, :cond_0

    return v1

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsMmTelManager;->setCrossSimCallingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change C_IWLAN status to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BackupCallingPrefCtrl"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 332
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    goto :goto_1

    .line 338
    :cond_0
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getSubscriptionInfoFromActiveList(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 340
    iput-object p1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 342
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 344
    iget-object v1, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_2

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->isChecked()Z

    move-result v2

    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 347
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->getLatestSummary(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->updateSummary(Ljava/lang/String;)V

    return-void

    .line 335
    :cond_3
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skip update under mCallState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/network/telephony/BackupCallingPreferenceController;->mCallState:Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BackupCallingPrefCtrl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
