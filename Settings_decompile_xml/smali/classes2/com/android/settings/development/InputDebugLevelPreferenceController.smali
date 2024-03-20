.class public Lcom/android/settings/development/InputDebugLevelPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "InputDebugLevelPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mInputLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private final mListEntries:[Ljava/lang/String;

.field private final mListValues:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "8"

    const-string v4, "16"

    const-string v5, "32"

    .line 24
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mListValues:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mListEntries:[Ljava/lang/String;

    .line 30
    sget v1, Lcom/android/settings/R$string;->inputdebuglog_select_level_show:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 32
    iget-object v2, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mListEntries:[Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeLevel(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 80
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "input_log_level"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 83
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "inputdebuglog_select_level"

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mInputLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 46
    iget-object v0, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mListEntries:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mInputLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object p0, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mListValues:[Ljava/lang/String;

    invoke-virtual {p1, p0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "inputdebuglog_select_level"

    return-object p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p2}, Lcom/android/settings/development/InputDebugLevelPreferenceController;->writeLevel(Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/android/settings/development/InputDebugLevelPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mInputLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz p1, :cond_2

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "input_log_level"

    const/4 v1, -0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 62
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    move v0, v2

    .line 66
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mListValues:[Ljava/lang/String;

    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 67
    aget-object v1, v1, v0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mInputLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mListValues:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mInputLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iget-object p0, p0, Lcom/android/settings/development/InputDebugLevelPreferenceController;->mListEntries:[Ljava/lang/String;

    aget-object p0, p0, v2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method
