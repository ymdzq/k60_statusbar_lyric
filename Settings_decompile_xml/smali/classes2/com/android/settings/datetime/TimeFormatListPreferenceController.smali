.class public Lcom/android/settings/datetime/TimeFormatListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TimeFormatListPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private final mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 45
    iput-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static getTimeFormatSelection(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "time_12_24"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "select_time_format"

    .line 51
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 52
    iget-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->time_format_entries_1:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->time_format_entries_2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->time_format_entries_3:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object p0, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "select_time_format"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "settings_set_time_format"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "null"

    .line 110
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string p2, "24"

    .line 113
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 115
    :goto_0
    iget-object p2, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settings/datetime/TimeFormatPreferenceController;->update24HourFormat(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 116
    iget-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mUpdateTimeAndDateCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object p0, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "disallow_timeset"

    .line 71
    invoke-static {p1, v0}, Lcom/miui/enterprise/RestrictionsHelper;->hasRestriction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 73
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object p1

    invoke-interface {p1, v0}, Lmiui/enterprise/IRestrictionsHelper;->isRestriction(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 76
    iget-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 80
    :cond_3
    iget-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->getTimeFormatSelection(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez p1, :cond_4

    const-string/jumbo p1, "null"

    :cond_4
    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/datetime/TimeFormatListPreferenceController;->mListPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method
