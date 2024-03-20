.class public Lcom/android/settings/datetime/TimeZonePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeZonePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mTimeManager:Landroid/app/time/TimeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    const-class v0, Landroid/app/time/TimeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/TimeManager;

    iput-object p1, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    return-void
.end method

.method private shouldEnableManualTimeZoneSelection()Z
    .locals 1

    .line 119
    iget-object p0, p0, Lcom/android/settings/datetime/TimeZonePreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    .line 120
    invoke-virtual {p0}, Landroid/app/time/TimeManager;->getTimeZoneCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilities;->getSetManualTimeZoneCapability()I

    move-result p0

    const/16 v0, 0x28

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "timezone"

    return-object p0
.end method

.method getTimeZoneOffsetAndName()Ljava/lang/CharSequence;
    .locals 2

    .line 113
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 114
    invoke-static {p0, v1, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 66
    instance-of v0, p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 68
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 69
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 71
    move-object v4, p1

    check-cast v4, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 73
    invoke-virtual {v4, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 74
    invoke-static {v2}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 75
    invoke-static {v2}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v5

    invoke-static {v2, v5, v3, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Ljava/util/Locale;Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/TimeZonePreferenceController;->getTimeZoneOffsetAndName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/datetime/TimeZonePreferenceController;->shouldEnableManualTimeZoneSelection()Z

    move-result p0

    .line 80
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 91
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "disallow_timeset"

    invoke-static {p0, v0}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_2

    .line 93
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object p0

    invoke-interface {p0, v0}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 96
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
    return-void
.end method
