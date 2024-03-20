.class public Lcom/android/systemui/tuner/ClockPreference;
.super Landroidx/preference/DropDownPreference;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final mClock:Ljava/lang/String;

.field public mClockEnabled:Z

.field public mHasSeconds:Z

.field public mHasSetValue:Z

.field public mHideList:Landroid/util/ArraySet;

.field public mReceivedClock:Z

.field public mReceivedSeconds:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const p2, 0x104096d    # @android:string/wfcSpnFormat_wifi_calling_bar_spn

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    .line 12
    const-string p1, "default"

    .line 14
    const-string p2, "disabled"

    .line 16
    const-string/jumbo v0, "seconds"

    .line 18
    filled-new-array {v0, p1, p2}, [Ljava/lang/CharSequence;

    .line 21
    move-result-object p1

    .line 24
    iput-object p1, p0, Landroidx/preference/ListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final onAttached()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    .line 2
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 5
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    .line 11
    const-string v1, "icon_blacklist"

    .line 13
    const-string v2, "clock_seconds"

    .line 15
    filled-new-array {v1, v2}, [Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 21
    return-void
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
    .locals 2

    .line 1
    const-string v0, "icon_blacklist"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedClock:Z

    .line 11
    iget-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHideList:Landroid/util/ArraySet;

    .line 19
    iget-object p2, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 23
    move-result p1

    .line 26
    xor-int/2addr p1, v1

    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    .line 28
    goto :goto_1

    .line 30
    :cond_0
    const-string v0, "clock_seconds"

    .line 31
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedSeconds:Z

    .line 39
    if-eqz p2, :cond_1

    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 43
    move-result p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    move p1, v1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 p1, 0x0

    .line 51
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSeconds:Z

    .line 52
    :cond_2
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSetValue:Z

    .line 54
    if-nez p1, :cond_5

    .line 56
    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedClock:Z

    .line 58
    if-eqz p1, :cond_5

    .line 60
    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mReceivedSeconds:Z

    .line 62
    if-eqz p1, :cond_5

    .line 64
    iput-boolean v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSetValue:Z

    .line 66
    iget-boolean p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClockEnabled:Z

    .line 68
    if-eqz p1, :cond_3

    .line 70
    iget-boolean p2, p0, Lcom/android/systemui/tuner/ClockPreference;->mHasSeconds:Z

    .line 72
    if-eqz p2, :cond_3

    .line 74
    const-string/jumbo p1, "seconds"

    .line 76
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 79
    goto :goto_2

    .line 82
    :cond_3
    if-eqz p1, :cond_4

    .line 83
    const-string p1, "default"

    .line 85
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 87
    goto :goto_2

    .line 90
    :cond_4
    const-string p1, "disabled"

    .line 91
    invoke-virtual {p0, p1}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 93
    :cond_5
    :goto_2
    return-void
    .line 96
.end method

.method public final persistString(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Lcom/android/systemui/tuner/TunerService;

    .line 8
    const-string/jumbo v2, "seconds"

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v2

    .line 16
    const-string v3, "clock_seconds"

    .line 17
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->setValue(ILjava/lang/String;)V

    .line 19
    const-string v1, "disabled"

    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHideList:Landroid/util/ArraySet;

    .line 30
    iget-object v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/tuner/ClockPreference;->mHideList:Landroid/util/ArraySet;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/tuner/ClockPreference;->mClock:Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 42
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 48
    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    .line 49
    const-string v0, ","

    .line 51
    iget-object p0, p0, Lcom/android/systemui/tuner/ClockPreference;->mHideList:Landroid/util/ArraySet;

    .line 53
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    const-string v0, "icon_blacklist"

    .line 59
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
    .line 64
.end method
