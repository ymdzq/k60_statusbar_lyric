.class public Lcom/android/settings/development/FiveGNrcaPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FiveGNrcaPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/FiveGNrcaPreferenceController$ServiceStateTelephonyCallback;
    }
.end annotation


# static fields
.field private static final CATEGORY_NRCA_PROPERTY_KEY:Ljava/lang/String; = "nrca_property"

.field private static final NRCA_SWITCH_KEY:Ljava/lang/String; = "nrca_switch"

.field private static final PHONE_COUNT_MAX:I = 0x2

.field private static final PREF_NRCA_TYPE_KEY:Ljava/lang/String; = "nrca_type"

.field private static final SIM_NRCA_CATEGORY_KEY:Ljava/lang/String; = "_nrca_category_key"

.field private static final TAG:Ljava/lang/String; = "FiveGNrcaPreferenceController"


# instance fields
.field private mAirplaneMode:Z

.field private mContext:Landroid/content/Context;

.field private mDataSubId:I

.field private mNrcaPropertyCategory:Landroidx/preference/PreferenceCategory;

.field private final mNrcaReceiver:Landroid/content/BroadcastReceiver;

.field private mNrcaSwitchView:[Lcom/android/settings/development/NrcaSwitchView;

.field private mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

.field private mSwitchCategory:[Landroidx/preference/PreferenceCategory;

.field private mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAirplaneMode(Lcom/android/settings/development/FiveGNrcaPreferenceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mAirplaneMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAirplaneMode(Lcom/android/settings/development/FiveGNrcaPreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mAirplaneMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDefaultDataSubId(Lcom/android/settings/development/FiveGNrcaPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->updateDefaultDataSubId()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNrcaState(Lcom/android/settings/development/FiveGNrcaPreferenceController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->updateNrcaState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreference(Lcom/android/settings/development/FiveGNrcaPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array v0, p2, [Landroidx/preference/PreferenceCategory;

    .line 48
    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    new-array p2, p2, [Lcom/android/settings/development/NrcaSwitchView;

    .line 49
    iput-object p2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaSwitchView:[Lcom/android/settings/development/NrcaSwitchView;

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaPropertyCategory:Landroidx/preference/PreferenceCategory;

    .line 51
    iput-object p2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 p2, 0x0

    .line 53
    iput-boolean p2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mAirplaneMode:Z

    .line 57
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    iput v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mDataSubId:I

    .line 58
    new-instance v0, Lcom/android/settings/development/FiveGNrcaPreferenceController$ServiceStateTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/development/FiveGNrcaPreferenceController$ServiceStateTelephonyCallback;-><init>(Lcom/android/settings/development/FiveGNrcaPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 112
    new-instance v0, Lcom/android/settings/development/FiveGNrcaPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/FiveGNrcaPreferenceController$1;-><init>(Lcom/android/settings/development/FiveGNrcaPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    .line 69
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
    iput-boolean p2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mAirplaneMode:Z

    .line 71
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

    .line 72
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 73
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mDataSubId:I

    .line 74
    iget-object p2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getDataNetworkType(Landroid/telephony/ServiceState;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getPhoneCount()I
    .locals 0

    .line 193
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method private getSubscriptionInfoBySlot(I)Lmiui/telephony/SubscriptionInfo;
    .locals 3

    .line 180
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 184
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

    .line 185
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .line 171
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 172
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p0, "FiveGNrcaPreferenceController"

    const-string/jumbo v0, "register broadcastreceiver"

    .line 176
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDefaultDataSubId()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mDataSubId:I

    .line 164
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mDataSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 166
    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->updateNrcaState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private updateNrcaState(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 153
    invoke-direct {p0, p1}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->getDataNetworkType(Landroid/telephony/ServiceState;)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sget p1, Lcom/android/settings/R$string;->nrca_registered:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sget p1, Lcom/android/settings/R$string;->nrca_unregistered:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :goto_0
    return-void
.end method

.method private updatePreference()V
    .locals 5

    const/4 v0, 0x0

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 133
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 134
    iget-object v2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePreference: isSimInsert = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FiveGNrcaPreferenceController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 137
    invoke-direct {p0, v0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->getSubscriptionInfoBySlot(I)Lmiui/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 139
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->getPhoneCount()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->sim_nrca_title:I

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

    .line 141
    :goto_1
    iget-object v2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSwitchCategoryTitle: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaSwitchView:[Lcom/android/settings/development/NrcaSwitchView;

    aget-object v2, v1, v0

    if-nez v2, :cond_2

    .line 145
    new-instance v2, Lcom/android/settings/development/NrcaSwitchView;

    iget-object v3, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/settings/development/NrcaSwitchView;-><init>(Landroidx/preference/PreferenceGroup;Landroid/content/Context;I)V

    aput-object v2, v1, v0

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaSwitchView:[Lcom/android/settings/development/NrcaSwitchView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/settings/development/NrcaSwitchView;->updateNrcaButtonUI()V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_nrca_category_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    .line 87
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 88
    new-instance v2, Landroidx/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 89
    sget v3, Lcom/android/settings/R$string;->nrca_switch_title:I

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setTitle(I)V

    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "nrca_switch"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 92
    iget-object v2, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mSwitchCategory:[Landroidx/preference/PreferenceCategory;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "nrca_property"

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaPropertyCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "nrca_type"

    .line 95
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

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

    const-string v0, "FiveGNrcaPreferenceController"

    const-string/jumbo v1, "onPause"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->setListening(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FiveGNrcaPreferenceController"

    const-string/jumbo v1, "onResume"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->setListening(Z)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->updatePreference()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->updateNrcaState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaPreferenceController;->registerBroadcastReceiver()V

    .line 204
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
