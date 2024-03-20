.class public Lcom/android/settings/wifi/ConnectedWifiEntryPreference;
.super Lcom/android/settings/wifi/LongPressWifiEntryPreference;
.source "ConnectedWifiEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mOnGearClickListener:Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/LongPressWifiEntryPreference;-><init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroidx/fragment/app/Fragment;)V

    .line 39
    sget p1, Lcom/android/settings/R$layout;->preference_widget_gear_optional_background:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 5

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/wifi/MiuiWifiEntryPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 54
    sget v0, Lcom/android/settings/R$id;->settings_button:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEntryPreference;->getWifiEntry()Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result p0

    .line 58
    sget v1, Lcom/android/settings/R$id;->settings_button_no_background:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 60
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    sget v0, Lcom/android/settings/R$id;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p0, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->settings_button:I

    if-ne p1, v0, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 69
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectedWifiEntryPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedWifiEntryPreference$OnGearClickListener;

    .line 47
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
