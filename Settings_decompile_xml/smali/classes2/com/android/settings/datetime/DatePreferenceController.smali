.class public Lcom/android/settings/datetime/DatePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DatePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;
    }
.end annotation


# instance fields
.field datePickerDialog:Lmiuix/appcompat/app/DatePickerDialog;

.field private final mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

.field private final mTimeManager:Landroid/app/time/TimeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 65
    iput-object p2, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    .line 66
    const-class p2, Landroid/app/time/TimeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/TimeManager;

    iput-object p1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    return-void
.end method


# virtual methods
.method public buildDatePicker(Landroid/content/Context;Landroid/app/timedetector/TimeDetectorHelper;)Lmiuix/appcompat/app/DatePickerDialog;
    .locals 9

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 134
    new-instance v7, Lmiuix/appcompat/app/DatePickerDialog;

    const/4 v1, 0x1

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x2

    .line 138
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v8, 0x5

    .line 139
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lmiuix/appcompat/app/DatePickerDialog;-><init>(Landroid/content/Context;Lmiuix/appcompat/app/DatePickerDialog$OnDateSetListener;III)V

    .line 142
    invoke-virtual {v7}, Lmiuix/appcompat/app/DatePickerDialog;->getDatePicker()Lmiuix/pickerwidget/widget/DatePicker;

    move-result-object p1

    .line 144
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 145
    invoke-virtual {p2}, Landroid/app/timedetector/TimeDetectorHelper;->getManualDateSelectionYearMin()I

    move-result v1

    const/4 v2, 0x0

    .line 148
    invoke-virtual {v0, v1, v2, v8}, Ljava/util/Calendar;->set(III)V

    .line 149
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lmiuix/pickerwidget/widget/DatePicker;->setMinDate(J)V

    .line 151
    invoke-virtual {p2}, Landroid/app/timedetector/TimeDetectorHelper;->getManualDateSelectionYearMax()I

    move-result p2

    .line 152
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 v1, 0xb

    const/16 v3, 0x1f

    .line 153
    invoke-virtual {v0, p2, v1, v3}, Ljava/util/Calendar;->set(III)V

    .line 154
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lmiuix/pickerwidget/widget/DatePicker;->setMaxDate(J)V

    .line 156
    invoke-virtual {v7, v2}, Lmiuix/appcompat/app/DatePickerDialog;->setLunarMode(Z)V

    .line 159
    iput-object v7, p0, Lcom/android/settings/datetime/DatePreferenceController;->datePickerDialog:Lmiuix/appcompat/app/DatePickerDialog;

    return-object v7
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "date"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 103
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "date"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    iget-object p0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    invoke-interface {p0}, Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;->showDatePicker()V

    const/4 p0, 0x1

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    .line 189
    iget-object p0, p0, Lcom/android/settings/datetime/DatePreferenceController;->mTimeManager:Landroid/app/time/TimeManager;

    .line 190
    invoke-virtual {p0}, Landroid/app/time/TimeManager;->getTimeCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/time/TimeCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeCapabilities;

    move-result-object p0

    .line 191
    invoke-virtual {p0}, Landroid/app/time/TimeCapabilities;->getSetManualTimeCapability()I

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

.method public onDateSet(Lmiuix/pickerwidget/widget/DatePicker;III)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "time_set_by_settings"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/settings/datetime/DatePreferenceController;->setDate(III)V

    .line 121
    iget-object p1, p0, Lcom/android/settings/datetime/DatePreferenceController;->mHost:Lcom/android/settings/datetime/DatePreferenceController$DatePreferenceHost;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 123
    iget-object p0, p0, Lcom/android/settings/datetime/DatePreferenceController;->datePickerDialog:Lmiuix/appcompat/app/DatePickerDialog;

    if-eqz p0, :cond_0

    .line 124
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismissWithoutAnimation()V

    :cond_0
    return-void
.end method

.method setDate(III)V
    .locals 2

    .line 165
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 167
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x2

    .line 168
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    .line 169
    invoke-virtual {v0, p1, p3}, Ljava/util/Calendar;->set(II)V

    .line 170
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    .line 172
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p3, Landroid/app/timedetector/TimeDetector;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/timedetector/TimeDetector;

    const-string p3, "Settings: Set date"

    .line 174
    invoke-static {p1, p2, p3}, Landroid/app/timedetector/TimeDetector;->createManualTimeSuggestion(JLjava/lang/String;)Landroid/app/timedetector/ManualTimeSuggestion;

    move-result-object p1

    .line 175
    invoke-interface {p0, p1}, Landroid/app/timedetector/TimeDetector;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 179
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to set date with suggestion="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DatePreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 76
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/datetime/DatePreferenceController;->isEnabled()Z

    move-result v0

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 86
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/MiuiSettings$Secure;->isTimeChangeDisallow(Landroid/content/ContentResolver;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 91
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "disallow_timeset"

    invoke-static {p0, v1}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 93
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object p0

    invoke-interface {p0, v1}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move p0, v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_5

    .line 96
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    return-void
.end method
