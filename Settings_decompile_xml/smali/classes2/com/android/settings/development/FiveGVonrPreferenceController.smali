.class public Lcom/android/settings/development/FiveGVonrPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FiveGVonrPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field private static final PHONE_COUNT_MAX:I = 0x2

.field private static final SIM_VONR_CATEGORY_KEY:Ljava/lang/String; = "_vonr_category_key"

.field private static final TAG:Ljava/lang/String; = "FiveGVonrPreferenceController"

.field private static final VONR_SWITCH_KEY:Ljava/lang/String; = "vonr_switch"


# instance fields
.field private mAirplaneMode:Z

.field private mContext:Landroid/content/Context;

.field private mSwitchCategory:[Landroidx/preference/PreferenceCategory;

.field private final mVonrReceiver:Landroid/content/BroadcastReceiver;

.field private mVonrSwitchView:[Lcom/android/settings/VonrSwitchView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAirplaneMode(Lcom/android/settings/development/FiveGVonrPreferenceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mAirplaneMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAirplaneMode(Lcom/android/settings/development/FiveGVonrPreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mAirplaneMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreference(Lcom/android/settings/development/FiveGVonrPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array v0, p2, [Landroidx/preference/PreferenceCategory;

    .line 38
    iput-object v0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    new-array p2, p2, [Lcom/android/settings/VonrSwitchView;

    .line 39
    iput-object p2, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mVonrSwitchView:[Lcom/android/settings/VonrSwitchView;

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mAirplaneMode:Z

    .line 81
    new-instance v0, Lcom/android/settings/development/FiveGVonrPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/FiveGVonrPreferenceController$1;-><init>(Lcom/android/settings/development/FiveGVonrPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    iput-object p1, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mAirplaneMode:Z

    return-void
.end method

.method private getPhoneCount()I
    .locals 0

    .line 141
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method private getSubscriptionInfoBySlot(I)Lmiui/telephony/SubscriptionInfo;
    .locals 3

    .line 128
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 132
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 133
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string p0, "FiveGVonrPreferenceController"

    const-string/jumbo v0, "register broadcastreceiver"

    .line 124
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updatePreference()V
    .locals 5

    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 99
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreference: isSimInsert = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FiveGVonrPreferenceController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 103
    invoke-direct {p0, v0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->getSubscriptionInfoBySlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->getPhoneCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sim_vonr_title:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_1
    iget-object v2, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSwitchCategoryTitle: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mVonrSwitchView:[Lcom/android/settings/VonrSwitchView;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    .line 111
    new-instance v2, Lcom/android/settings/VonrSwitchView;

    iget-object v3, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/settings/VonrSwitchView;-><init>(Landroidx/preference/PreferenceGroup;Landroid/content/Context;I)V

    aput-object v2, v1, v0

    .line 113
    :cond_2
    iget-object v1, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mVonrSwitchView:[Lcom/android/settings/VonrSwitchView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/VonrSwitchView;->updateVonrButtonUI()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_vonr_category_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 60
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 61
    new-instance v2, Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 62
    sget v3, Lcom/android/settings/R$string;->vonr_switch_title:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vonr_switch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 65
    iget-object v2, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

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

.method public onPause()V
    .locals 2

    const-string v0, "FiveGVonrPreferenceController"

    const-string/jumbo v1, "onPause"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/FiveGVonrPreferenceController;->mVonrReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FiveGVonrPreferenceController"

    const-string/jumbo v1, "onResume"

    .line 76
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->registerBroadcastReceiver()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/development/FiveGVonrPreferenceController;->updatePreference()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
