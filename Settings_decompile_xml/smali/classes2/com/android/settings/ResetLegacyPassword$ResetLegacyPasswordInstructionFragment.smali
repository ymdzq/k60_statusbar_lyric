.class public Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;
.super Lcom/android/settings/KeyguardSettingsPreferenceFragment;
.source "ResetLegacyPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ResetLegacyPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetLegacyPasswordInstructionFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 26
    const-class p0, Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 53
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/KeyguardSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    const/16 v0, 0x65

    const/4 v1, -0x1

    if-ne p1, p3, :cond_0

    if-ne p2, v1, :cond_0

    .line 55
    const-class p1, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, p0, p1, v0, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_0
    if-ne v0, p1, :cond_1

    if-ne v1, p2, :cond_1

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget p1, Lcom/android/settings/R$style;->Theme_DayNight_Settings_NoTitle:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->setThemeRes(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 37
    sget p2, Lcom/android/settings/R$layout;->reset_legacy_password_instruction_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 39
    sget p2, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment$1;-><init>(Lcom/android/settings/ResetLegacyPassword$ResetLegacyPasswordInstructionFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
