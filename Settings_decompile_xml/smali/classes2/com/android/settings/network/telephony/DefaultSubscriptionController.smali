.class public abstract Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "DefaultSubscriptionController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;
.implements Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSubController"


# instance fields
.field private mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

.field private mIsRtlMode:Z

.field protected mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field protected mManager:Landroid/telephony/SubscriptionManager;

.field protected mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field protected mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field mSubInfoEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$GsuoF2O9A2EZTd79p0nlzR0xjcI(Lcom/android/settings/network/telephony/DefaultSubscriptionController;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->lambda$refreshSummary$1(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Xr995Q1kEJmU2RRlF0ur8yz51gY(Lcom/android/settings/network/telephony/DefaultSubscriptionController;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->lambda$displayPreference$0(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$z38WmRUPAM0ZuInOGbK4meAXEMg(Ljava/util/List;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->lambda$updateEntries$2(Ljava/util/List;Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    .line 77
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mIsRtlMode:Z

    .line 80
    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    .line 81
    new-instance p2, Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;-><init>(Landroid/content/Context;Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    .line 82
    iput-object p4, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p3, :cond_1

    .line 84
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->summary_placeholder:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$refreshSummary$1(Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    .line 137
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateEntries$2(Ljava/util/List;Landroidx/preference/Preference;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p1, 0x0

    .line 170
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-object p0, p0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 127
    new-instance v0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/telephony/DefaultSubscriptionController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    return p1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method protected abstract getDefaultSubscriptionId()I
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

.method protected getSubscriptionInfoList()Ljava/util/List;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected isAskEverytimeSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method isRtlMode()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mIsRtlMode:Z

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onActiveSubInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    .line 230
    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onAirplaneModeChanged(Z)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAirplaneModeChanged(Z)V

    return-void
.end method

.method public bridge synthetic onAllMobileNetworkInfoChanged(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAllMobileNetworkInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public onAllUiccInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/UiccInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public bridge synthetic onAnyOngoingCallOnDevice(Z)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAnyOngoingCallOnDevice(Z)V

    return-void
.end method

.method public bridge synthetic onAvailableSubInfoChanged(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAvailableSubInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCallStateChanged(I)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onCallStateChanged(I)V

    return-void
.end method

.method public bridge synthetic onDataRoamingChanged(IZ)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onDataRoamingChanged(IZ)V

    return-void
.end method

.method public bridge synthetic onDefaultDataChanged(I)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;->onDefaultDataChanged(I)V

    return-void
.end method

.method public onDefaultSmsChanged(I)V
    .locals 0

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    .line 246
    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onDefaultSubInfoChanged(I)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;->onDefaultSubInfoChanged(I)V

    return-void
.end method

.method public onDefaultVoiceChanged(I)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    .line 240
    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    .line 119
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-virtual {p0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;->unRegisterReceiver()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 216
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->setDefaultSubscription(I)V

    .line 218
    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileNetworkRepository;->addRegisterBySubId(I)V

    .line 113
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mDataSubscriptionChangedReceiver:Lcom/android/settings/network/DefaultSubscriptionReceiver;

    invoke-virtual {p0}, Lcom/android/settings/network/DefaultSubscriptionReceiver;->registerReceiver()V

    return-void
.end method

.method protected refreshSummary(Landroidx/preference/Preference;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/DefaultSubscriptionController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    :cond_0
    return-void
.end method

.method protected abstract setDefaultSubscription(I)V
.end method

.method updateEntries()V
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    .line 166
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 168
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    new-instance v0, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, v4}, Lcom/android/settings/network/telephony/DefaultSubscriptionController$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V

    return-void

    .line 174
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->getDefaultSubscriptionId()I

    move-result v5

    .line 177
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v1

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 178
    iget-boolean v8, v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    if-eqz v8, :cond_5

    goto :goto_0

    .line 181
    :cond_5
    iget-object v8, v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->uniqueName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v8, v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 183
    iget-object v7, v7, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->subId:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v8, v5, :cond_4

    move v6, v2

    goto :goto_0

    .line 188
    :cond_6
    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updatePreferenceState(Landroidx/preference/Preference;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->isAskEverytimeSupported()Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_7

    .line 192
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->calls_and_sms_ask_every_time:I

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_7
    iget-object v2, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    new-array v7, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_8

    .line 200
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_8
    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected updatePreferenceState(Landroidx/preference/Preference;)V
    .locals 0

    .line 0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
