.class public Lcom/android/settings/dndmode/QuietActivity$Quietragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "QuietActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dndmode/QuietActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Quietragment"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDoNotDisturbModeObserver:Landroid/database/ContentObserver;

.field private off:Lcom/android/settings/dndmode/RadioButtonWithArrow;

.field private quiet:Lcom/android/settings/dndmode/RadioButtonWithArrow;

.field private silent:Lcom/android/settings/dndmode/RadioButtonWithArrow;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/android/settings/dndmode/QuietActivity$Quietragment;)Landroid/app/Activity;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mswitchModel(Lcom/android/settings/dndmode/QuietActivity$Quietragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->switchModel(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/dndmode/QuietActivity$Quietragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dndmode/QuietActivity$Quietragment$1;-><init>(Lcom/android/settings/dndmode/QuietActivity$Quietragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mDoNotDisturbModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private switchModel(I)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->off:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->silent:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->quiet:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->silent:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->quiet:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 83
    :cond_2
    iget-object p0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->off:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ZEN_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "silent"

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v2, "switch"

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    .line 114
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "quiet"

    .line 115
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 116
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget p1, Lcom/android/settings/R$xml;->dnd_quiet_main:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mActivity:Landroid/app/Activity;

    const-string/jumbo p1, "off"

    .line 59
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/RadioButtonWithArrow;

    iput-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->off:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    const-string/jumbo p1, "silent"

    .line 60
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/RadioButtonWithArrow;

    iput-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->silent:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    const-string/jumbo p1, "quiet"

    .line 61
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/RadioButtonWithArrow;

    iput-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->quiet:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    .line 63
    iget-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->off:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->off:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/settings/dndmode/RadioButtonWithArrow;->setArrowVisibility(I)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->silent:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->silent:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {p1, p0}, Lcom/android/settings/dndmode/RadioButtonWithArrow;->setOnClickListeners(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->quiet:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 68
    iget-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->quiet:Lcom/android/settings/dndmode/RadioButtonWithArrow;

    invoke-virtual {p1, p0}, Lcom/android/settings/dndmode/RadioButtonWithArrow;->setOnClickListeners(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "zen_mode"

    .line 71
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mDoNotDisturbModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 70
    invoke-virtual {p1, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    iget-object p1, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->switchModel(I)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 99
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v1, v2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "silent"

    .line 101
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object p0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-static {p0, p1, v2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "quiet"

    .line 103
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 104
    iget-object p0, p0, Lcom/android/settings/dndmode/QuietActivity$Quietragment;->mActivity:Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-static {p0, p1, v2}, Landroid/app/ExtraNotificationManager;->setZenMode(Landroid/content/Context;ILandroid/net/Uri;)V

    :cond_2
    :goto_0
    return v1
.end method
