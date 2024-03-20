.class public Lcom/android/settings/projection/ScreenProjectionExampleFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenProjectionExampleFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getDocumentProjectionIntent()Landroid/content/Intent;
    .locals 2

    .line 66
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p0, :cond_0

    .line 67
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.mi.android.globalFileexplorer.action.FILE_CATEGORY"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "inner_from"

    const-string/jumbo v1, "settings"

    .line 68
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "file_category"

    const/4 v1, 0x4

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.fileexplorer"

    .line 72
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "extraTabIndex"

    const/4 v1, 0x2

    .line 73
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    return-object p0
.end method

.method private getGameProjectionIntent()Landroid/content/Intent;
    .locals 1

    :try_start_0
    const-string p0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;S.jump_target=gamebox;end"

    const/4 v0, 0x0

    .line 81
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "ScreenProjectionExampleFragment"

    const-string v0, "URI invalid"

    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private isIntentValid(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/android/settings/MiuiUtils;->isIntentActivityExistAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Lcom/android/settings/R$xml;->screen_projection_examples:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "pref_key_screen_projection_example_document"

    .line 36
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ImagePreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ImagePreference;->setContentClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "pref_key_screen_projection_example_game"

    .line 37
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ImagePreference;

    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/MiuiUtils;->isSecondSpace(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImagePreference;->setContentClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :goto_0
    const-string/jumbo p1, "pref_key_screen_projection_example_gallery"

    .line 43
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ImagePreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/ImagePreference;->setContentClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 49
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "pref_key_screen_projection_example_document"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/projection/ScreenProjectionExampleFragment;->getDocumentProjectionIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "pref_key_screen_projection_example_game"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/projection/ScreenProjectionExampleFragment;->getGameProjectionIntent()Landroid/content/Intent;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "pref_key_screen_projection_example_gallery"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 56
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.miui.gallery.action.VIEW_ALBUM"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 58
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/projection/ScreenProjectionExampleFragment;->isIntentValid(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method
