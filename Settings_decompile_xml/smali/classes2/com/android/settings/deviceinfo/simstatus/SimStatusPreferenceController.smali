.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SimStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final KEY_PREFERENCE_CATEGORY:Ljava/lang/String; = "device_detail_category"

.field private static final TAG:Ljava/lang/String; = "SimStatusPreferenceController"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mLifecycleOwnerObserver:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnSubscriptionChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSimChangeObserver:Landroidx/lifecycle/Observer;

.field private mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method public static synthetic $r8$lambda$ZQFAVphfx5jHnv-WUjAi07cgjA8(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroidx/preference/Preference;ILjava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->lambda$updateState$0(Landroidx/preference/Preference;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a057d2EHWQt6bST0FFdKp3wj9ks(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroidx/preference/Preference;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->lambda$updateState$1(Landroidx/preference/Preference;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePhoneNumeberStatus(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->updatePhoneNumeberStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, ""

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 88
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    .line 279
    new-instance p2, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mOnSubscriptionChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    const-string/jumbo p2, "telephony_subscription_service"

    .line 71
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method private getCarrierName(I)Ljava/lang/CharSequence;
    .locals 2

    .line 221
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->isFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 223
    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/DomesticRoamUtils;->getRegisteredOperatorName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v1, v0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 230
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->device_info_not_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getPreferenceTitle(I)Ljava/lang/String;
    .locals 2

    .line 204
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowSlotDevice()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    .line 205
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 206
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sim_status_title_sim_softbank:I

    add-int/2addr p1, v1

    .line 207
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 206
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sim_status_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    .line 210
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 211
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sim_status_title_sim_slot:I

    add-int/2addr p1, v1

    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 211
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 212
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sim_status_title:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$updateState$0(Landroidx/preference/Preference;ILjava/lang/Object;)V
    .locals 0

    .line 162
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->updateStateBySlot(Landroidx/preference/Preference;I)V

    return-void
.end method

.method private synthetic lambda$updateState$1(Landroidx/preference/Preference;Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result p2

    .line 162
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroidx/preference/Preference;I)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSimChangeObserver:Landroidx/lifecycle/Observer;

    .line 163
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {p0, p3, v0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSimChangeObserver:Landroidx/lifecycle/Observer;

    if-eqz p1, :cond_1

    .line 166
    iget-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {p3, p1}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    const/4 p1, 0x0

    .line 167
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSimChangeObserver:Landroidx/lifecycle/Observer;

    .line 169
    :cond_1
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    invoke-virtual {p2, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

    :goto_0
    return-void
.end method

.method private updatePhoneNumeberStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->updateState(Landroidx/preference/Preference;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;
    .locals 1

    .line 237
    new-instance p0, Lcom/android/settingslib/miuisettings/preference/Preference;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    .line 118
    invoke-static {v0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceUtils;->isVisible(Landroidx/preference/Preference;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "device_detail_category"

    .line 126
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 129
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->setBasePreferenceOrdering(I)V

    .line 132
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v2, 0x0

    .line 133
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 138
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 139
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;

    move-result-object v0

    .line 140
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v3, v2}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getPreferenceOrdering(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 141
    invoke-static {v2}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 144
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    .line 107
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    :goto_1
    return v1
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

.method public getSimSlotIndex()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->findSlotIndexByKey(Ljava/lang/String;)I

    move-result p0

    :goto_0
    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 189
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceTitle(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 81
    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

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

    .line 267
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_0

    .line 268
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mOnSubscriptionChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mOnSubscriptionChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, p0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_0
    return-void
.end method

.method public updateDynamicRawDataToIndex(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;)V"
        }
    .end annotation

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result v0

    .line 243
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    sget v1, Lcom/android/settings/R$string;->keywords_sim_status_esim:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/settings/R$string;->keywords_sim_status:I

    .line 256
    :goto_0
    new-instance v2, Lcom/android/settingslib/search/SearchIndexableRaw;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 258
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceTitle(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->about_settings:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 260
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 261
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    if-nez v1, :cond_1

    .line 158
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    .line 159
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroidx/preference/Preference;Landroidx/lifecycle/LiveData;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mLifecycleOwnerObserver:Landroidx/lifecycle/Observer;

    .line 172
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->observeForever(Landroidx/lifecycle/Observer;)V

    goto :goto_0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSimChangeObserver:Landroidx/lifecycle/Observer;

    if-eqz v0, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSimSlotIndex()I

    move-result v0

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->updateStateBySlot(Landroidx/preference/Preference;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateStateBySlot(Landroidx/preference/Preference;I)V
    .locals 4

    .line 180
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 181
    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 182
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setCopyingEnabled(Z)V

    .line 183
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceTitle(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getCarrierName(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
