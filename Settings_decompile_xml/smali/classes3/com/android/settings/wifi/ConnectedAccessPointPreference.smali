.class public Lcom/android/settings/wifi/ConnectedAccessPointPreference;
.super Lcom/android/settings/wifi/LongPressAccessPointPreference;
.source "ConnectedAccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mIsCaptivePortal:Z


# virtual methods
.method protected getWidgetLayoutResourceId()I
    .locals 0

    .line 49
    sget p0, Lcom/android/settings/R$layout;->preference_widget_gear_optional_background:I

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 56
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setShowDivider(Z)V

    .line 57
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eqz v0, :cond_0

    .line 58
    sget v0, Lcom/android/settings/R$string;->wifi_tap_to_sign_in:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method
