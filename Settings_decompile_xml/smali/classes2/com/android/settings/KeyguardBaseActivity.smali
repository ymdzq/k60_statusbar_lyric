.class public Lcom/android/settings/KeyguardBaseActivity;
.super Landroid/app/Activity;
.source "KeyguardBaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 31
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isMultiWindowNotFreeformMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    .line 20
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    .line 21
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->checkMultiWindowState(Landroid/app/Activity;)V

    .line 22
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isMultiWindowNotFreeformMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->hideSoftInput(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 13
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 14
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->checkMultiWindowState(Landroid/app/Activity;)V

    return-void
.end method
