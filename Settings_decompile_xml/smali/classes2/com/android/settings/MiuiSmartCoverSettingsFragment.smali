.class public Lcom/android/settings/MiuiSmartCoverSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSmartCoverSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;
    }
.end annotation


# instance fields
.field private mDisplayPref:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrefClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mSmartcoverModeEnable:Landroidx/preference/CheckBoxPreference;

.field private mSupportTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmDisplayPref(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mDisplayPref:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmartcoverModeEnable(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mSmartcoverModeEnable:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSupportTypes(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mSupportTypes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$menableSmartcoverGroup(Lcom/android/settings/MiuiSmartCoverSettingsFragment;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->enableSmartcoverGroup(ZI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mDisplayPref:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mSupportTypes:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment$1;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mPrefClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method private addSupportTypes(I)V
    .locals 5

    .line 127
    sget v0, Lcom/android/settings/R$string;->normal_smartcover_title:I

    .line 129
    sget v1, Lcom/android/settings/R$drawable;->smartcover_normal_normal:I

    .line 130
    sget v2, Lcom/android/settings/R$drawable;->smartcover_normal_selected:I

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const-string/jumbo p1, "normal"

    goto :goto_0

    .line 147
    :cond_0
    sget v0, Lcom/android/settings/R$string;->full_transparent_smarrcover_title:I

    .line 149
    sget v1, Lcom/android/settings/R$drawable;->smartcover_transparent_normal:I

    .line 150
    sget v2, Lcom/android/settings/R$drawable;->smartcover_transparent_selected:I

    const-string/jumbo p1, "transparent"

    goto :goto_0

    .line 141
    :cond_1
    sget v0, Lcom/android/settings/R$string;->lattice_smartcover_title:I

    .line 143
    sget v1, Lcom/android/settings/R$drawable;->smartcover_lattice_normal:I

    .line 144
    sget v2, Lcom/android/settings/R$drawable;->smartcover_lattice_selected:I

    const-string p1, "lattice"

    goto :goto_0

    .line 135
    :cond_2
    sget v0, Lcom/android/settings/R$string;->smallwindow_smartcover_title:I

    .line 137
    sget v1, Lcom/android/settings/R$drawable;->smartcover_small_window_normal:I

    .line 138
    sget v2, Lcom/android/settings/R$drawable;->smartcover_small_window_selected:I

    const-string/jumbo p1, "smallwindow"

    .line 155
    :goto_0
    new-instance v3, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v1, v2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;-><init>(Lcom/android/settings/MiuiSmartCoverSettingsFragment;Landroid/content/Context;II)V

    invoke-direct {p0, v3, v0, p1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->initSmartCoverMode(Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;ILjava/lang/String;)V

    return-void
.end method

.method private enableSmartcoverGroup(ZI)V
    .locals 3

    const/4 v0, 0x0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mDisplayPref:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 169
    iget-object v1, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mDisplayPref:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    invoke-virtual {v1, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private init()V
    .locals 9

    const-string/jumbo v0, "persist.sys.smartcover_mode"

    const/4 v1, 0x1

    .line 91
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string/jumbo v3, "smartcover_mode_enable"

    .line 94
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mSmartcoverModeEnable:Landroidx/preference/CheckBoxPreference;

    .line 95
    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 96
    iget-object v3, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mSmartcoverModeEnable:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string/jumbo v3, "small_win_cover_type"

    .line 99
    invoke-static {v3}, Lmiui/util/FeatureParser;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_4

    .line 100
    array-length v4, v3

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    goto :goto_3

    .line 104
    :cond_1
    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 105
    iget-object v7, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mSupportTypes:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-direct {p0, v6}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->addSupportTypes(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 109
    :cond_2
    invoke-direct {p0, v0, v2}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->enableSmartcoverGroup(ZI)V

    const-string/jumbo v0, "persist.sys.smallwin_type"

    const/4 v3, -0x2

    .line 110
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 113
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mDisplayPref:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;

    goto :goto_2

    .line 115
    :cond_3
    iget-object v3, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mDisplayPref:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mSupportTypes:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;

    .line 117
    :goto_2
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string/jumbo v0, "support_multiple_small_win_cover"

    .line 120
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "smart_cover_key"

    invoke-static {p0, v0, v2, v2}, Landroid/provider/MiuiSettings$System;->putBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    :cond_4
    :goto_3
    return-void
.end method

.method private initSmartCoverMode(Lcom/android/settings/MiuiSmartCoverSettingsFragment$ImageRadioButtonPreference;ILjava/lang/String;)V
    .locals 0

    .line 159
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(I)V

    .line 160
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 161
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 162
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 163
    iget-object p2, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mPrefClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 164
    iget-object p0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mDisplayPref:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 185
    const-class p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 85
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->smartcover_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 86
    invoke-direct {p0}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->init()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->mSmartcoverModeEnable:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 72
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/MiuiSmartCoverSettingsFragment;->enableSmartcoverGroup(ZI)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method
