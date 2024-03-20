.class Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;
.super Ljava/lang/Object;
.source "PrivacyPasswordSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;->onDetach()V
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

    .line 161
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "miui_security_fragment_result"

    const/4 v2, 0x0

    .line 165
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/KeyguardSettingsPreferenceFragment;

    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment$2;->this$0:Lcom/android/settings/privacypassword/PrivacyPasswordSetting$PrivacyPasswordSettingFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetRequestCode()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->onFragmentResult(ILandroid/os/Bundle;)V

    return-void
.end method
