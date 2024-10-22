.class public Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "BugReportHandlerPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;
    }
.end annotation


# instance fields
.field private mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

.field private mFooter:Lcom/android/settingslib/widget/FooterPreference;


# direct methods
.method public static synthetic $r8$lambda$TezaLTfLFvyRenoXH4ag_hJoc4U(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->lambda$getDescription$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$upUkCUVdnkgzuNDBojAB-DUouZA(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->lambda$getDescription$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->createDefaultBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->setBugReportHandlerUtil(Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;)V

    .line 122
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    return-object p0
.end method

.method private getDescription(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.android.shell"

    .line 188
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 189
    sget p0, Lcom/android/settings/R$string;->system_default_app_subtext:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    const-string p0, ""

    return-object p0

    .line 194
    :cond_1
    iget-object p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 195
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    .line 196
    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_2

    .line 198
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 199
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance p1, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$$ExternalSyntheticLambda0;

    invoke-direct {p1, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string p2, "Settings.WORK_PROFILE_APP_SUBTEXT"

    invoke-virtual {p0, p2, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_2
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p0

    new-instance p1, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;)V

    const-string p2, "Settings.PERSONAL_PROFILE_APP_SUBTEXT"

    invoke-virtual {p0, p2, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHandlerApp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x23

    .line 60
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getHandlerUser(Ljava/lang/String;)I
    .locals 1

    const/16 v0, 0x23

    .line 66
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 69
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "BugReportHandlerPicker"

    const-string v0, "Failed to get handlerUser"

    .line 71
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDescription$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 200
    sget v0, Lcom/android/settings/R$string;->work_profile_app_subtext:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getDescription$1(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 203
    sget v0, Lcom/android/settings/R$string;->personal_profile_app_subtext:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    .line 98
    sget v1, Lcom/android/settings/R$drawable;->ic_info_outline_24dp:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSingleLineTitle(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    sget v2, Lcom/android/settings/R$string;->bug_report_handler_picker_footer_text:I

    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mFooter:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public bindPreferenceExtra(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 175
    invoke-super/range {p0 .. p5}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->bindPreferenceExtra(Lcom/android/settingslib/widget/RadioButtonPreference;Ljava/lang/String;Lcom/android/settingslib/widget/CandidateInfo;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x8

    .line 176
    invoke-virtual {p1, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    return-void
.end method

.method createDefaultAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 7

    .line 182
    new-instance v6, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;

    iget-object v0, p4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 183
    invoke-direct {p0, v0, p3}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker$BugreportHandlerAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;Ljava/lang/String;)V

    return-object v6
.end method

.method createDefaultBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;
    .locals 0

    .line 132
    new-instance p0, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;-><init>()V

    return-object p0
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 110
    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getValidBugReportHandlerInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 111
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 113
    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/PackageItemInfo;

    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->createDefaultAppInfo(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/pm/PackageItemInfo;)Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->getCurrentBugReportHandlerAppAndUser(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p0

    .line 139
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x710

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 91
    sget p0, Lcom/android/settings/R$xml;->bug_report_handler_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 84
    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 1

    .line 151
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onSelectionPerformed(Z)V

    if-eqz p1, :cond_1

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "android.settings.BUGREPORT_HANDLER_SETTINGS"

    .line 155
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 161
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->showInvalidChoiceToast(Landroid/content/Context;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->updateCandidates()V

    :cond_2
    :goto_1
    return-void
.end method

.method setBugReportHandlerUtil(Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->mBugReportHandlerUtil:Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getBugReportHandlerUtil()Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 145
    invoke-static {p1}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getHandlerApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-static {p1}, Lcom/android/settings/bugreporthandler/BugReportHandlerPicker;->getHandlerUser(Ljava/lang/String;)I

    move-result p1

    .line 144
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/settings/bugreporthandler/BugReportHandlerUtil;->setCurrentBugReportHandlerAppAndUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
