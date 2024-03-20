.class public Lcom/android/settings/applications/intentpicker/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoBase;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# instance fields
.field private mActivityCreated:Z

.field private mAddLinkPreference:Landroidx/preference/Preference;

.field private mClearDefaultsPreference:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

.field mContext:Landroid/content/Context;

.field mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

.field private mMainPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mMainSwitchPreference:Landroidx/preference/SwitchPreference;

.field private mOtherDefaultsPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mSelectedLinksPreferenceCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public static synthetic $r8$lambda$G_8a6BGwdXS-Y7AVHYsCQdiYZPA(Lcom/android/settings/applications/intentpicker/AppLaunchSettings;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->lambda$initVerifiedLinksPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$leVgngKXfT_fkpoI_r_tC4EZ9wE(Lcom/android/settings/applications/intentpicker/AppLaunchSettings;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->lambda$initAddLinkPreference$1(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method

.method private canUpdateMainSwitchAndCategories()Z
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 250
    invoke-static {v0, v1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getDomainVerificationUserState(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 253
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->disabledPreference()V

    const/4 p0, 0x0

    return p0

    .line 257
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLinkHandlingAllowed() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->isLinkHandlingAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    .line 260
    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->isLinkHandlingAllowed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 264
    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->isLinkHandlingAllowed()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method private createHeaderPreference()V
    .locals 6

    .line 200
    iget-boolean v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mActivityCreated:Z

    const-string v1, "AppLaunchSettings"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "onParentActivityCreated: ignoring duplicate call."

    .line 201
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 204
    iput-boolean v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mActivityCreated:Z

    .line 205
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_1

    const-string/jumbo p0, "onParentActivityCreated: PakcageInfo is null."

    .line 206
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 209
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 210
    sget v2, Lcom/android/settings/R$string;->app_launch_top_intro_message:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 212
    invoke-static {v1, p0, v3}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v3

    .line 213
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 214
    invoke-static {v4, v5}, Lcom/android/settingslib/Utils;->getBadgedIcon(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    .line 215
    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v3

    .line 216
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/EntityHeaderController;->setSummary(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 217
    invoke-static {v3}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 218
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 219
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v2

    .line 220
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    const/4 v2, 0x0

    .line 221
    invoke-virtual {v0, v2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private createVerifiedLinksDialog()Lmiuix/appcompat/app/AlertDialog;
    .locals 6

    const/4 v0, 0x2

    .line 290
    invoke-direct {p0, v0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result v1

    .line 292
    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/settings/R$layout;->app_launch_verified_links_title:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 294
    sget v3, Lcom/android/settings/R$id;->dialog_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 295
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getVerifiedLinksTitle(I)Ljava/lang/String;

    move-result-object v5

    .line 294
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    sget v3, Lcom/android/settings/R$id;->dialog_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 297
    invoke-direct {p0, v1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getVerifiedLinksMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getLinksList(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 301
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 302
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v1, 0x1

    .line 303
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 304
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->app_launch_dialog_ok:I

    .line 305
    invoke-virtual {p0, v0, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 306
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextDirection(I)V

    goto :goto_0

    :cond_0
    const-string v0, "AppLaunchSettings"

    const-string v1, "createVerifiedLinksDialog: dialog.getListView() is null, please check it."

    .line 310
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0
.end method

.method private disabledPreference()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 386
    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method private generateCheckBoxPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;)V
    .locals 3

    .line 447
    new-instance v0, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;

    .line 448
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;-><init>(Landroid/content/Context;Z)V

    .line 449
    invoke-virtual {v0, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 450
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 451
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private getLinksNumber(I)I
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getLinksList(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 462
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private getVerifiedLinksMessage(I)Ljava/lang/String;
    .locals 2

    .line 326
    new-instance v0, Landroid/icu/text/MessageFormat;

    .line 327
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->app_launch_verified_links_message:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 329
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "count"

    .line 330
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-virtual {v0, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initAddLinkPreference()V
    .locals 2

    const-string/jumbo v0, "open_by_default_add_link"

    .line 350
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mAddLinkPreference:Landroidx/preference/Preference;

    .line 351
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->isAddLinksShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mAddLinkPreference:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->isAddLinksNotEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 353
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mAddLinkPreference:Landroidx/preference/Preference;

    new-instance v1, Lcom/android/settings/applications/intentpicker/AppLaunchSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/intentpicker/AppLaunchSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method private initFooter()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->app_launch_footer:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v1, "open_by_default_footer"

    .line 401
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/widget/FooterPreference;

    .line 403
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initMainSwitchAndCategories()V
    .locals 1

    const-string/jumbo v0, "open_by_default_supported_links"

    .line 240
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SwitchPreference;

    const-string/jumbo v0, "open_by_default_main_category"

    .line 242
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "open_by_default_selected_links_category"

    .line 243
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mSelectedLinksPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 245
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->initOtherDefaultsSection()V

    return-void
.end method

.method private initOtherDefaultsSection()V
    .locals 2

    const-string v0, "app_launch_other_defaults"

    .line 391
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mOtherDefaultsPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 392
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->isClearDefaultsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    const-string v0, "app_launch_clear_defaults"

    .line 395
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    return-void
.end method

.method private initUIComponents()V
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->initMainSwitchAndCategories()V

    .line 229
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->canUpdateMainSwitchAndCategories()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->initVerifiedLinksPreference()V

    .line 231
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->initAddLinkPreference()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->addSelectedLinksPreference()V

    .line 233
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->initFooter()V

    :cond_0
    return-void
.end method

.method private initVerifiedLinksPreference()V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainPreferenceCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v1, "open_by_default_verified_links"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 272
    new-instance v1, Lcom/android/settings/applications/intentpicker/AppLaunchSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/intentpicker/AppLaunchSettings;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/4 v1, 0x2

    .line 276
    invoke-direct {p0, v1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result v1

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getVerifiedLinksTitle(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    if-lez v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 278
    :goto_0
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private isAddLinksNotEmpty()Z
    .locals 1

    const/4 v0, 0x0

    .line 364
    invoke-direct {p0, v0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isAddLinksShown()Z
    .locals 2

    .line 368
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->isAddLinksNotEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private isClearDefaultsEnabled()Z
    .locals 5

    .line 421
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 423
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    .line 425
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 426
    invoke-static {v1, v4}, Lcom/android/settingslib/applications/AppUtils;->isDefaultBrowser(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 427
    invoke-static {v1, p0}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v3

    .line 429
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClearDefaultsEnabled hasBindAppWidgetPermission : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isClearDefaultsEnabled isAutoLaunchEnabled : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    if-nez p0, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    return v2
.end method

.method private synthetic lambda$initAddLinkPreference$1(Landroidx/preference/Preference;)Z
    .locals 2

    const/4 p1, 0x0

    .line 354
    invoke-direct {p0, p1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result p1

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The number of the state none links: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    if-lez p1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->showProgressDialogFragment()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initVerifiedLinksPreference$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 273
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->showVerifiedLinksDialog()V

    const/4 p0, 0x1

    return p0
.end method

.method private setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 439
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/verify/domain/DomainVerificationManager;->setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addSelectedItems : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLaunchSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showProgressDialogFragment()V
    .locals 3

    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "app_package"

    .line 373
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v1, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;-><init>()V

    .line 375
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 376
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment;->showDialog(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method

.method private showVerifiedLinksDialog()V
    .locals 2

    const/4 v0, 0x2

    .line 282
    invoke-direct {p0, v0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/AppInfoBase;->showDialogInner(II)V

    return-void
.end method


# virtual methods
.method addSelectedLinksPreference()V
    .locals 3

    const/4 v0, 0x1

    .line 336
    invoke-direct {p0, v0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->getLinksNumber(I)I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mSelectedLinksPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 340
    iget-object v1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getLinksList(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 342
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 343
    iget-object v2, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mSelectedLinksPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, v2, v1}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->generateCheckBoxPreference(Landroidx/preference/PreferenceCategory;Ljava/lang/String;)V

    goto :goto_0

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mAddLinkPreference:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->isAddLinksNotEmpty()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method protected createDialog(II)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->createVerifiedLinksDialog()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x11

    return p0
.end method

.method getVerifiedLinksTitle(I)Ljava/lang/String;
    .locals 2

    .line 317
    new-instance v0, Landroid/icu/text/MessageFormat;

    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->app_launch_verified_links_title:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 319
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 320
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "count"

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-virtual {v0, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 111
    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mActivityCreated:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 117
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 118
    iget-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez p1, :cond_0

    const-string p1, "AppLaunchSettings"

    const-string/jumbo v0, "onCreate: mAppEntry is null, please check the reason!!!"

    .line 119
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 123
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->installed_app_launch_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    iput-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    .line 125
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->initUIComponents()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 156
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    .line 159
    instance-of v0, p1, Lcom/android/settings/applications/intentpicker/LeftSideCheckBoxPreference;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 160
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 161
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 163
    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 164
    invoke-static {p1, v0}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getDomainVerificationUserState(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 169
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->getIdentifier()Ljava/util/UUID;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->setDomainVerificationUserSelection(Ljava/util/UUID;Ljava/util/Set;Z)V

    .line 171
    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mAddLinkPreference:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->isAddLinksNotEmpty()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 173
    :cond_1
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "open_by_default_supported_links"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->onSwitchChanged(Landroid/widget/Switch;Z)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSwitchChanged: isChecked="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->logd(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainSwitchPreference:Landroidx/preference/SwitchPreference;

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mMainPreferenceCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    if-eqz p1, :cond_2

    .line 191
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/verify/domain/DomainVerificationManager;->setDomainVerificationLinkHandlingAllowed(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onSwitchChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLaunchSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 130
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 131
    invoke-direct {p0}, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->createHeaderPreference()V

    return-void
.end method

.method protected refreshUi()Z
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/applications/intentpicker/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/MiuiClearDefaultsPreference;

    iget-object p0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/MiuiClearDefaultsPreference;->setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    const/4 p0, 0x1

    return p0
.end method
