.class public Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "PhoneNumberPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final DELAY_MILLIS:J = 0x1f4L

.field private static final KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field private static final KEY_PREFERENCE_CATEGORY:Ljava/lang/String; = "basic_info_category"

.field private static final TAG:Ljava/lang/String; = "PhoneNumberPreferenceController"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mImsConnectorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/deviceinfo/ImsConnector;",
            ">;"
        }
    .end annotation
.end field

.field private final mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

.field private final mOnSubscriptionChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhoneCount:I

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdatePhoneNumeberStatus(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->updatePhoneNumeberStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    .line 81
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    .line 85
    new-instance p1, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$1;-><init>(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    .line 331
    new-instance p1, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$2;-><init>(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mOnSubscriptionChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 100
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 101
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 102
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPhoneCount:I

    .line 103
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->initImsConnectors()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private connect()V
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    sget-object p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "connect: need init ims connectors"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/ImsConnector;

    if-eqz v2, :cond_1

    .line 290
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/ImsConnector;->connect()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private disconnect()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    sget-object p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "disconnect: need do nothing"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 303
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/ImsConnector;

    if-eqz v2, :cond_1

    .line 305
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/ImsConnector;->disconnect()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getFirstPhoneNumber()Ljava/lang/CharSequence;
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 189
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 195
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 191
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getPhoneNumber(I)Ljava/lang/CharSequence;
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 201
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private getPreferenceTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 210
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowSlotDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 212
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->status_number_sim_softbank:I

    add-int/2addr p1, v1

    .line 213
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 212
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 213
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->status_number:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 217
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->status_number_sim_slot:I

    add-int/2addr p1, v1

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 217
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 218
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->status_number:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private initImsConnectors()V
    .locals 4

    const/4 v0, 0x0

    .line 273
    :goto_0
    iget v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    .line 274
    new-instance v1, Lcom/android/settings/deviceinfo/ImsConnector;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsRegistrationCallback:Landroid/telephony/ims/ImsMmTelManager$RegistrationCallback;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/settings/deviceinfo/ImsConnector;-><init>(Landroid/content/Context;ILandroid/telephony/ims/ImsMmTelManager$RegistrationCallback;)V

    .line 276
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePhoneNumeberStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 342
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 344
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->updateState(Landroidx/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;
    .locals 0

    .line 248
    new-instance p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    const-string v1, "basic_info_category"

    .line 149
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 150
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    const/4 v2, 0x1

    move v3, v2

    .line 158
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 157
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 158
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v4

    if-nez v4, :cond_2

    .line 159
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;

    move-result-object v4

    .line 160
    invoke-virtual {v4, v2}, Landroidx/preference/Preference;->setCopyingEnabled(Z)V

    add-int v5, v0, v3

    .line 161
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOrder(I)V

    .line 162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "phone_number"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 164
    instance-of v5, v4, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v5, :cond_1

    .line 165
    move-object v5, v4

    check-cast v5, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 168
    :cond_1
    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 169
    iget-object v5, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mImsConnectorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 313
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

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

.method protected getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/SubscriptionUtil;->getBidiFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->device_info_default:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method protected getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 2

    .line 224
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 225
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 227
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 228
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_protected_single_press:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 127
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phone_number"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[^0-9]"

    const-string v2, ""

    .line 134
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 136
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 137
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getPhoneNumber(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 139
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 253
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    goto :goto_0

    .line 255
    :cond_0
    sget-object p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->TAG:Ljava/lang/String;

    const-string p1, "init: lifecycle is null, invalid param"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 319
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_0

    .line 320
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mOnSubscriptionChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 327
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mOnSubscriptionChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 268
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->disconnect()V

    .line 269
    iget-object p0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->connect()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    const/4 p1, 0x0

    .line 175
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    .line 177
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getPreferenceTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
