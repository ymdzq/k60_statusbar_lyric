.class public Lcom/android/settings/accounts/MiuiChooseAccountFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiChooseAccountFragment.java"


# static fields
.field private static final FILTER_APP_PACKAGE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mAddAccountGroup:Landroidx/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

.field private mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field

.field mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public static synthetic $r8$lambda$UMzHMj_dOlTes1shDCdONLU1m5w(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->lambda$getFilteredAuthDescriptions$1(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$YAWsG8C69EiVWfZs2BLgRwef8pY(Landroid/accounts/AuthenticatorDescription;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->lambda$getFilteredAuthDescriptions$0(Landroid/accounts/AuthenticatorDescription;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qKX3GUpnTPLql0R1NrJG9PKbGpw(Lcom/android/settings/accounts/MiuiChooseAccountFragment;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->lambda$addEnterpriseDisclosure$2(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfinishWithAccountType(Lcom/android/settings/accounts/MiuiChooseAccountFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->FILTER_APP_PACKAGE_SET:Ljava/util/Set;

    const-string v1, "cn.wps.moffice_eng"

    .line 87
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "com.eg.android.AlipayGphone"

    .line 88
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    .line 77
    iput-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    return-void
.end method

.method private addEnterpriseDisclosure()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;->getDeviceOwnerDisclosure()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    if-nez v1, :cond_1

    .line 288
    new-instance v1, Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    const/4 v2, 0x0

    .line 289
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    new-instance v1, Lcom/android/settings/accounts/MiuiChooseAccountFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accounts/MiuiChooseAccountFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreAction(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->footer_learn_more_content_description:I

    .line 296
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->getLabelName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 295
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setLearnMoreText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAddAccountGroup:Landroidx/preference/PreferenceGroup;

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mEnterpriseDisclosurePreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private finishWithAccountType(ILjava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    .line 404
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void

    .line 408
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "selected_account"

    .line 409
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.USER"

    .line 410
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 411
    iget-object p2, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 412
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private finishWithAccountType(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 399
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->finishWithAccountType(ILjava/lang/String;)V

    return-void
.end method

.method private getFilteredAuthDescriptions()[Landroid/accounts/AuthenticatorDescription;
    .locals 1

    .line 175
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 176
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 175
    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p0

    .line 177
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/accounts/AuthenticatorDescription;

    return-object p0

    .line 180
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/accounts/MiuiChooseAccountFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment$$ExternalSyntheticLambda0;-><init>()V

    .line 181
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/accounts/MiuiChooseAccountFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment$$ExternalSyntheticLambda1;-><init>()V

    .line 183
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/AuthenticatorDescription;

    return-object p0
.end method

.method private getLabelName()Ljava/lang/String;
    .locals 1

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->header_add_an_account:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSetupWizard()Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "account_setup_wizard"

    .line 129
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private synthetic lambda$addEnterpriseDisclosure$2(Landroid/view/View;)V
    .locals 1

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$getFilteredAuthDescriptions$0(Landroid/accounts/AuthenticatorDescription;)Z
    .locals 1

    .line 182
    sget-object v0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->FILTER_APP_PACKAGE_SET:Ljava/util/Set;

    iget-object p0, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getFilteredAuthDescriptions$1(I)[Landroid/accounts/AuthenticatorDescription;
    .locals 0

    .line 183
    new-array p0, p0, [Landroid/accounts/AuthenticatorDescription;

    return-object p0
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v3, v2

    const/4 v4, 0x2

    const-string v5, "ChooseAccountFragment"

    const/4 v6, 0x1

    if-ge v1, v3, :cond_b

    .line 189
    aget-object v2, v2, v1

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 194
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 196
    iget-object v8, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    if-eqz v8, :cond_2

    array-length v8, v8

    if-lez v8, :cond_2

    if-eqz v7, :cond_2

    move v8, v0

    .line 198
    :goto_1
    iget-object v9, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v10, v9

    if-ge v8, v10, :cond_1

    .line 199
    aget-object v9, v9, v8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move v7, v0

    goto :goto_3

    :cond_2
    :goto_2
    move v7, v6

    :goto_3
    if-eqz v7, :cond_3

    .line 205
    iget-object v8, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    if-eqz v8, :cond_3

    .line 206
    invoke-virtual {v8, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v7, v0

    :cond_3
    const-string v8, "com.xiaomi.unactivated"

    .line 210
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    :goto_4
    move v6, v0

    goto :goto_5

    :cond_5
    const-string v9, "com.xiaomi"

    .line 212
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 213
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    .line 215
    invoke-virtual {v7, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 217
    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 219
    sget-boolean v8, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v8, :cond_6

    goto :goto_4

    .line 222
    :cond_6
    array-length v8, v9

    if-nez v8, :cond_4

    array-length v7, v7

    if-nez v7, :cond_4

    goto :goto_5

    .line 225
    :cond_7
    invoke-static {v2}, Lcom/android/settings/accounts/MiuiManageAccountsSettings;->isUserVisible(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v7, "com.laposte.android.ibm.tokenagent.account"

    .line 227
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_5

    :cond_8
    move v6, v7

    :goto_5
    if-eqz v6, :cond_9

    .line 234
    iget-object v4, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/accounts/ProviderEntry;

    invoke-direct {v5, v3, v2}, Lcom/android/settings/accounts/ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 236
    :cond_9
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped pref "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": has no authority we need"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 241
    :cond_b
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v6, :cond_d

    .line 246
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/ProviderEntry;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ProviderEntry;->getType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 245
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 248
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    .line 250
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 249
    invoke-static {v3, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/content/Intent;

    move-result-object v1

    .line 248
    invoke-virtual {v2, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 251
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_9

    .line 253
    :cond_c
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/ProviderEntry;

    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderEntry;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 255
    :cond_d
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 256
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAddAccountGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 258
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/accounts/ProviderEntry;

    .line 259
    invoke-virtual {v1}, Lcom/android/settings/accounts/ProviderEntry;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 260
    new-instance v3, Lcom/android/settings/accounts/ProviderPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 261
    invoke-virtual {v1}, Lcom/android/settings/accounts/ProviderEntry;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/settings/accounts/ProviderEntry;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 262
    sget v2, Lcom/android/settings/R$layout;->miuix_preference_app_layout:I

    invoke-virtual {v3, v2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 263
    invoke-virtual {v1}, Lcom/android/settings/accounts/ProviderEntry;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/android/settings/accounts/ProviderPreference;->checkAccountManagementAndSetDisabled(I)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAddAccountGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    .line 267
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->addEnterpriseDisclosure()V

    goto :goto_9

    .line 269
    :cond_f
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_8
    if-ge v4, v3, :cond_10

    aget-object v6, v2, v4

    .line 272
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    .line 273
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 275
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No providers found for authorities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_11
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 278
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_9
    return-void
.end method

.method private updateAuthDescriptions()V
    .locals 6

    .line 167
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->getFilteredAuthDescriptions()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 168
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 169
    iget-object v4, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v5, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->onAuthDescriptionsUpdated()V

    return-void
.end method


# virtual methods
.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 312
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 313
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 314
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 313
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 315
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 316
    aget-object v3, v0, v2

    .line 317
    iget-object v4, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v5, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 319
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 320
    iget-object v5, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v5, 0x2

    const-string v6, "ChooseAccountFragment"

    .line 322
    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to accountType "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_1
    iget-object v3, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 329
    :cond_2
    iget-object p0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7

    const-string v0, "ChooseAccountFragment"

    .line 339
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 342
    iget-object v3, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    const/4 v6, 0x0

    .line 343
    invoke-virtual {v3, v4, v6, v5}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 344
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget v1, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    .line 345
    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 344
    invoke-virtual {v4, v1, v3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_0

    .line 348
    :try_start_1
    invoke-static {v1}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p1

    goto :goto_2

    :catch_0
    move-object v2, v1

    goto :goto_0

    :catch_1
    move-object v2, v1

    goto :goto_1

    :cond_0
    move-object v2, v1

    goto :goto_2

    .line 354
    :catch_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon resource for account type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 352
    :catch_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No icon name for account type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    return-object v2

    .line 360
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "ChooseAccountFragment"

    .line 371
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 374
    iget-object v2, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    const/4 v4, 0x0

    .line 375
    invoke-virtual {v2, v3, v4, p0}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v1, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 380
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No label resource for account type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 378
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No label name for account type "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 93
    const-class p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 136
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    sget p1, Lcom/android/settings/R$xml;->add_account_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "authorities"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAuthorities:[Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "account_types"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 143
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 144
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 145
    iget-object v3, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    .line 149
    invoke-static {v0, p1, v2, v1}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mUserHandle:Landroid/os/UserHandle;

    .line 151
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mAddAccountGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    .line 100
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mActivity:Landroid/app/Activity;

    .line 101
    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 106
    sget v0, Lcom/android/settings/R$layout;->choose_account_settings:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 108
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 109
    invoke-super {p0, p1, v0, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->isSetupWizard()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 113
    sget p1, Lcom/android/settings/R$id;->next:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 114
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 115
    new-instance p3, Lcom/android/settings/accounts/MiuiChooseAccountFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment$1;-><init>(Lcom/android/settings/accounts/MiuiChooseAccountFragment;)V

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 2

    .line 388
    instance-of p1, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz p1, :cond_1

    .line 389
    check-cast p2, Lcom/android/settings/accounts/ProviderPreference;

    const/4 p1, 0x2

    const-string v0, "ChooseAccountFragment"

    .line 390
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempting to add account of type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->finishWithAccountType(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 156
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/accounts/MiuiChooseAccountFragment;->updateAuthDescriptions()V

    return-void
.end method
