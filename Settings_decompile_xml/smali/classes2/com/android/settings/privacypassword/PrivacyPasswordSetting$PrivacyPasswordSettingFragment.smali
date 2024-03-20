.class public Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "PrivacyPasswordSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivacyPasswordSettingFragment"
.end annotation


# instance fields
.field private final mPasswordSettingsClickListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPrivacyPasswordManager(Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartConfirmActivity(Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->startConfirmActivity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    .line 61
    new-instance v0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;)V

    iput-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->mPasswordSettingsClickListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method private isManagedProfile()Z
    .locals 4

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 115
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    const/4 v0, 0x0

    .line 117
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isManagedProfile"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    .line 118
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "PrivacyPasswordSetting"

    const-string v2, "isManageedProfile error"

    .line 120
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private startConfirmActivity()V
    .locals 4

    .line 88
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 90
    :goto_0
    new-instance v2, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v2, v1}, Landroid/security/MiuiLockPatternUtils;->getActivePasswordQuality(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_2

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    const-class v2, Lcom/android/settings/ConfirmSpacePatternActivity;

    goto :goto_1

    .line 96
    :cond_1
    const-class v2, Lcom/android/settings/ConfirmLockPattern$InternalActivity;

    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lmiui/securityspace/CrossUserUtils;->isAirSpace(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    const-class v2, Lcom/android/settings/ConfirmSpacePasswordActivity;

    goto :goto_1

    .line 101
    :cond_3
    const-class v2, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    .line 105
    :goto_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->putIntentExtra(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    const v0, 0x46daf

    .line 109
    invoke-virtual {p0, v3, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 151
    const-class p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 127
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0x46daf

    const/4 v0, -0x1

    if-eq p1, p3, :cond_2

    const p3, 0x46db1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v0, :cond_1

    .line 139
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    :cond_2
    if-ne p2, v0, :cond_3

    .line 131
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p3, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "extra_data"

    const-string p3, "choose_suspend"

    .line 132
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget p1, Lcom/android/settings/R$xml;->privacy_password_setting:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 55
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const-string/jumbo p1, "privacy_password_settings"

    .line 56
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    .line 57
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->mPasswordSettingsClickListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 156
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/KeyguardSettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 161
    new-instance v1, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;-><init>(Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    return-void
.end method
