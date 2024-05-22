.class public Lcom/android/systemui/tuner/BatteryPreference;
.super Landroidx/preference/DropDownPreference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final mBattery:Ljava/lang/String;

.field public mBatteryEnabled:Z

.field public mHasPercentage:Z

.field public mHasSetValue:Z

.field public mHideList:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const p2, 0x1040967    # @android:string/wfcSpnFormat_spn_wifi_calling_vo_hyphen

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    .line 12
    const-string p1, "default"

    .line 14
    const-string p2, "disabled"

    .line 16
    const-string v0, "percent"

    .line 18
    filled-new-array {v0, p1, p2}, [Ljava/lang/CharSequence;

    .line 20
    move-result-object p1

    .line 23
    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final onAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v0

    .line 10
    const-string/jumbo v1, "status_bar_show_battery_percent"

    .line 11
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    const/4 v2, 0x1

    .line 21
    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasPercentage:Z

    .line 22
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 24
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 30
    const-string v1, "icon_blacklist"

    .line 32
    filled-new-array {v1}, [Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 38
    return-void
    .line 41
.end method

.method public final onDetached()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 8
    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    .line 10
    invoke-virtual {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 13
    return-void
    .line 16
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "icon_blacklist"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 11
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHideList:Landroid/util/ArraySet;

    .line 17
    iget-object p2, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    .line 19
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result p1

    .line 24
    xor-int/2addr p1, v0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBatteryEnabled:Z

    .line 26
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasSetValue:Z

    .line 28
    if-nez p1, :cond_3

    .line 30
    iput-boolean v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasSetValue:Z

    .line 32
    iget-boolean p1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBatteryEnabled:Z

    .line 34
    if-eqz p1, :cond_1

    .line 36
    iget-boolean p2, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHasPercentage:Z

    .line 38
    if-eqz p2, :cond_1

    .line 40
    const-string p1, "percent"

    .line 42
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_1
    if-eqz p1, :cond_2

    .line 48
    const-string p1, "default"

    .line 50
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    const-string p1, "disabled"

    .line 56
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 58
    :cond_3
    :goto_0
    return-void
    .line 61
.end method

.method public final persistString(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "percent"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 8
    const/16 v2, 0xed

    .line 10
    invoke-static {v1, v2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 12
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v1

    .line 20
    const-string/jumbo v2, "status_bar_show_battery_percent"

    .line 21
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 24
    const-string v0, "disabled"

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    iget-object p1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHideList:Landroid/util/ArraySet;

    .line 35
    iget-object v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    .line 37
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHideList:Landroid/util/ArraySet;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mBattery:Ljava/lang/String;

    .line 45
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 47
    :goto_0
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    .line 50
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 55
    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 56
    const-string v0, ","

    .line 58
    iget-object p0, p0, Lcom/android/systemui/tuner/BatteryPreference;->mHideList:Landroid/util/ArraySet;

    .line 60
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 65
    const-string v0, "icon_blacklist"

    .line 66
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
    .line 71
.end method
