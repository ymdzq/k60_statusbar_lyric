.class public Lcom/android/settings/Legal;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "Legal.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/dashboard/DashboardFragment;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLicenseGplHtmlPath:Ljava/lang/String;

.field private mMiuiCopyright:Landroidx/preference/Preference;

.field private mMiuiPrivacyPolicy:Landroidx/preference/Preference;

.field private mMiuiSar:Landroidx/preference/Preference;

.field private mMiuiUserAgreement:Landroidx/preference/Preference;

.field private mMiuiUserExperienceProgram:Landroidx/preference/Preference;

.field private mPocoPrivacyPolicy:Landroidx/preference/Preference;

.field private mPocoUserAgreement:Landroidx/preference/Preference;

.field private mWirttenOffer:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$5zbv_y33qUi2p-R3wFQwvPdH43w(Lcom/android/settings/Legal;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/Legal;->lambda$onCreate$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lcom/android/settings/Legal;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/Legal;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const-string v0, "/system/etc/NOTICE_GPL.html.gz"

    .line 56
    iput-object v0, p0, Lcom/android/settings/Legal;->mLicenseGplHtmlPath:Ljava/lang/String;

    return-void
.end method

.method private generateHTMLUriForLicense()V
    .locals 5

    .line 171
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/NOTICE.html.gz"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 173
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Legal;->startActivityForLicense(Landroid/net/Uri;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/loader/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/settings/Legal;->generateHTMLUriForLicense()V

    const/4 p0, 0x1

    return p0
.end method

.method private showLicenseLoadErrorToast()V
    .locals 2

    .line 211
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->settings_license_activity_unavailable:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startActivityForLicense(Landroid/net/Uri;)V
    .locals 4

    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 198
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "com.android.htmlviewer"

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/app/Activity;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_0
    const-string p1, "com.android.settings.SettingsLicenseActivity"

    .line 201
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 205
    sget-object v0, Lcom/android/settings/Legal;->TAG:Ljava/lang/String;

    const-string v1, "Failed to find viewer"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    invoke-direct {p0}, Lcom/android/settings/Legal;->showLicenseLoadErrorToast()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 121
    sget-object p0, Lcom/android/settings/Legal;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 60
    const-class p0, Lcom/android/settings/Legal;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 116
    sget p0, Lcom/android/settings/R$xml;->device_info_legal:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "terms"

    const/4 v2, 0x1

    .line 73
    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v1, "license"

    .line 75
    invoke-static {p1, v0, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string v3, "copyright"

    .line 77
    invoke-static {p1, v0, v3, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroidx/preference/PreferenceGroup;Ljava/lang/String;I)Z

    const-string/jumbo p1, "miuiCopyright"

    .line 80
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mMiuiCopyright:Landroidx/preference/Preference;

    const-string/jumbo p1, "miuiUserAgreement"

    .line 81
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mMiuiUserAgreement:Landroidx/preference/Preference;

    const-string/jumbo p1, "miuiPrivacyPolicy"

    .line 82
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mMiuiPrivacyPolicy:Landroidx/preference/Preference;

    const-string/jumbo p1, "miuiSar"

    .line 83
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mMiuiSar:Landroidx/preference/Preference;

    const-string/jumbo p1, "miuiUserExperienceProgram"

    .line 84
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mMiuiUserExperienceProgram:Landroidx/preference/Preference;

    .line 85
    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/settings/Legal;->mMiuiSar:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    const-string/jumbo p1, "writtenOffer"

    .line 88
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mWirttenOffer:Landroidx/preference/Preference;

    const-string/jumbo p1, "ro.config.license_gpl_path"

    const-string v2, "/system/etc/NOTICE_GPL.html.gz"

    .line 89
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mLicenseGplHtmlPath:Ljava/lang/String;

    .line 90
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveWrittenOffer()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/android/settings/Legal;->mWirttenOffer:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    const-string/jumbo p1, "pocoUserAgreement"

    .line 94
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mPocoUserAgreement:Landroidx/preference/Preference;

    const-string/jumbo p1, "pocoPrivacyPolicy"

    .line 95
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/Legal;->mPocoPrivacyPolicy:Landroidx/preference/Preference;

    .line 96
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->hasPocoLauncherDefault()Z

    move-result p1

    if-nez p1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/android/settings/Legal;->mPocoUserAgreement:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 98
    iget-object p1, p0, Lcom/android/settings/Legal;->mPocoPrivacyPolicy:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 101
    :cond_2
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settings/Legal;->mMiuiCopyright:Landroidx/preference/Preference;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 102
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/Legal;->mMiuiCopyright:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 105
    :cond_3
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 107
    new-instance v0, Lcom/android/settings/Legal$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/Legal$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/Legal;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0

    .line 181
    new-instance p1, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settingslib/license/LicenseHtmlLoaderCompat;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public onLoadFinished(Landroidx/loader/content/Loader;Ljava/io/File;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "com.android.settings.files"

    invoke-static {p1, v0, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/Legal;->startActivityForLicense(Landroid/net/Uri;)V

    goto :goto_0

    .line 190
    :cond_0
    sget-object p1, Lcom/android/settings/Legal;->TAG:Ljava/lang/String;

    const-string p2, "Failed to generate."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/android/settings/Legal;->showLicenseLoadErrorToast()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/Legal;->onLoadFinished(Landroidx/loader/content/Loader;Ljava/io/File;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 135
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/loader/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 4

    .line 141
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/MiuiUtils;->getViewLicenseAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/Legal;->mMiuiCopyright:Landroidx/preference/Preference;

    const-string v2, "android.intent.extra.LICENSE_TYPE"

    if-ne p2, v1, :cond_0

    const/4 v1, 0x0

    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/settings/Legal;->mMiuiUserAgreement:Landroidx/preference/Preference;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x2

    .line 145
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/settings/Legal;->mMiuiPrivacyPolicy:Landroidx/preference/Preference;

    if-ne p2, v1, :cond_2

    const/4 v1, 0x1

    .line 147
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/settings/Legal;->mMiuiUserExperienceProgram:Landroidx/preference/Preference;

    if-ne p2, v1, :cond_3

    const/16 v1, 0x8

    .line 149
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 150
    :cond_3
    iget-object v1, p0, Lcom/android/settings/Legal;->mPocoUserAgreement:Landroidx/preference/Preference;

    if-ne p2, v1, :cond_4

    const/16 v1, 0x10

    .line 151
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/android/settings/Legal;->mPocoPrivacyPolicy:Landroidx/preference/Preference;

    if-ne p2, v1, :cond_5

    const/16 v1, 0x11

    .line 153
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 156
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 157
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 158
    :cond_6
    iget-object v1, p0, Lcom/android/settings/Legal;->mMiuiSar:Landroidx/preference/Preference;

    if-ne p2, v1, :cond_7

    const/4 v1, 0x7

    .line 159
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 161
    :cond_7
    iget-object v0, p0, Lcom/android/settings/Legal;->mWirttenOffer:Landroidx/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "license_path"

    .line 163
    iget-object v2, p0, Lcom/android/settings/Legal;->mLicenseGplHtmlPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "license_type"

    const-string/jumbo v2, "written_offer"

    .line 164
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    invoke-virtual {p2, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 167
    :cond_8
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    .line 127
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 129
    sget v0, Lcom/android/settings/R$string;->legal_information:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method
