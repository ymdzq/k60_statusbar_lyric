.class Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;
.super Ljava/lang/Object;
.source "PrivacyPasswordSetting.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 64
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "privacy_password_settings"

    .line 65
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/privacypassword/TransparentHelper;->isScreenLockOpen(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->-$$Nest$mstartConfirmActivity(Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->-$$Nest$fgetmPrivacyPasswordManager(Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 72
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "enter_from_settings"

    .line 73
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    const v0, 0x46db1

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 76
    :cond_1
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "extra_data"

    const-string v1, "choose_suspend"

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$1;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_2
    :goto_0
    return p2
.end method
