.class public Lcom/android/settings/NewFingerprintInternalActivity;
.super Lcom/android/settings/SettingsCompatActivity;
.source "NewFingerprintInternalActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;,
        Lcom/android/settings/NewFingerprintInternalActivity$FingerprintSensorType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 81
    invoke-static {}, Lcom/android/settings/utils/MiuiGxzwUtils;->isGxzwSensor()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 82
    const-class p0, Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 84
    :cond_0
    const-class p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string v1, ":settings:show_fragment"

    .line 86
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, ":settings:show_fragment_title"

    .line 87
    sget v1, Lcom/android/settings/R$string;->empty_title:I

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget p1, Lcom/android/settings/R$style;->Theme_Dark_Settings_NoTitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    return-void
.end method
