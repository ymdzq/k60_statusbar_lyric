.class public Lcom/android/settings/development/DarkUIPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "DarkUIPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 37
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/DarkUIPreferenceController;-><init>(Landroid/content/Context;Landroid/app/UiModeManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/UiModeManager;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/android/settings/development/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    return-void
.end method

.method private modeToDescription(I)Ljava/lang/String;
    .locals 1

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$array;->dark_ui_mode_entries:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 85
    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 82
    aget-object p0, p0, p1

    return-object p0
.end method

.method private modeToInt(Ljava/lang/String;)I
    .locals 2

    .line 101
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0xdc1

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const v0, 0x1d2e7

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "yes"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "no"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x2

    return p0
.end method

.method private modeToString(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string/jumbo p0, "no"

    return-object p0

    :cond_0
    const-string/jumbo p0, "yes"

    return-object p0
.end method

.method private updateSummary(Landroidx/preference/Preference;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/settings/development/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    .line 74
    move-object v1, p1

    check-cast v1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/development/DarkUIPreferenceController;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0, v0}, Lcom/android/settings/development/DarkUIPreferenceController;->modeToDescription(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "dark_ui_mode"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/development/DarkUIPreferenceController;->modeToInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/app/UiModeManager;->setNightMode(I)V

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/development/DarkUIPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/development/DarkUIPreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method
