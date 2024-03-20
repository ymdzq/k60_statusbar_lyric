.class public Lcom/android/settings/KeyguardBaseEditFragment;
.super Lcom/android/settings/BaseEditFragment;
.source "KeyguardBaseEditFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/android/settings/BaseEditFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isMultiWindowNotFreeformMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    .line 17
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->checkMultiWindowState(Landroid/app/Activity;)V

    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->isMultiWindowNotFreeformMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->hideSoftInput(Landroidx/fragment/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 11
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->checkMultiWindowState(Landroid/app/Activity;)V

    return-void
.end method
