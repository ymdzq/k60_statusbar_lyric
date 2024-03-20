.class public Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity;
.super Lcom/android/settings/SettingsCompatActivity;
.source "MiuiGxzwAnimSettingsInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;,
        Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;,
        Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimSettingHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 75
    const-class p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title"

    .line 76
    sget v1, Lcom/android/settings/R$string;->privacy_password_use_finger_dialog_title:I

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public getOwnerTheme()I
    .locals 0

    .line 69
    sget p0, Lcom/android/settings/R$style;->Theme_DayNight_Settings:I

    return p0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    sget v0, Lcom/android/settings/R$string;->gxzw_anim_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
