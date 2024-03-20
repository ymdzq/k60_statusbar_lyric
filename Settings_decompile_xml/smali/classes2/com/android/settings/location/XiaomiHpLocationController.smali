.class public Lcom/android/settings/location/XiaomiHpLocationController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "XiaomiHpLocationController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final RTK_CLOUD_STATE:Ljava/lang/String; = "persist.sys.mqs.gps.rtk"

.field private static final RTK_ON:Ljava/lang/String; = "ON"

.field private static final TAG:Ljava/lang/String; = "XiaomiHpLocationController"

.field private static final XM_HP_LOCATION:Ljava/lang/String; = "xiaomi_high_precise_location"

.field private static final XM_HP_LOCATION_ERROR:I = 0x64

.field private static final XM_HP_LOCATION_OFF:I = 0x2

.field private static final XM_HP_LOCATION_ON:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPs:Landroidx/preference/PreferenceScreen;

.field private mSwitchBar:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private hasXiaomiHpFeature()Z
    .locals 1

    const-string/jumbo p0, "persist.sys.mqs.gps.rtk"

    const-string v0, "ON"

    .line 136
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "persist.vendor.gnss.hpLocSetUI"

    .line 137
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private isDisabled()Z
    .locals 2

    .line 159
    iget-object p0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "xiaomi_high_precise_location"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isZh()Z
    .locals 1

    .line 122
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "zh_CN"

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private setXmHpLocationOn(Z)V
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "off"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XiaomiHpLocationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "xiaomi_high_precise_location"

    if-eqz p1, :cond_1

    .line 147
    iget-object p0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 150
    :cond_1
    iget-object p0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 51
    iput-object p1, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mPs:Landroidx/preference/PreferenceScreen;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mSwitchBar:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/location/XiaomiHpLocationController;->isDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mSwitchBar:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mSwitchBar:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 78
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v1, "XiaomiHpLocationController"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/location/XiaomiHpLocationController;->isZh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/location/XiaomiHpLocationController;->hasXiaomiHpFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "could show switch button"

    .line 79
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 82
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/location/XiaomiHpLocationController;->setXmHpLocationOn(Z)V

    const-string/jumbo p0, "not China version or not specific device"

    .line 83
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 108
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_toggle"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 111
    iget-object v1, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mPs:Landroidx/preference/PreferenceScreen;

    const-string/jumbo v2, "xiaomi_high_precise_location"

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 114
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 p0, 0x1

    return p0

    .line 118
    :cond_0
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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 89
    iget-object p1, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "xiaomi_high_precise_location"

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current mode is: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string/jumbo v2, "on"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "off"

    :goto_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "XiaomiHpLocationController"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    if-ne p1, v1, :cond_1

    .line 93
    invoke-direct {p0, p2}, Lcom/android/settings/location/XiaomiHpLocationController;->setXmHpLocationOn(Z)V

    return v1

    :cond_1
    if-ne p1, v0, :cond_2

    .line 96
    invoke-direct {p0, v1}, Lcom/android/settings/location/XiaomiHpLocationController;->setXmHpLocationOn(Z)V

    return v1

    :cond_2
    const/16 p0, 0x64

    if-ne p1, p0, :cond_3

    const-string p0, "ERROR: unknown state "

    .line 99
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    return p2
.end method

.method public onStart()V
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mValidListener:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mSwitchBar:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 70
    iget-boolean v0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mSwitchBar:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/location/XiaomiHpLocationController;->mValidListener:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
