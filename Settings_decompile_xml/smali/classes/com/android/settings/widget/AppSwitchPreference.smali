.class public Lcom/android/settings/widget/AppSwitchPreference;
.super Lcom/android/settingslib/miuisettings/preference/SwitchPreference;
.source "AppSwitchPreference.java"

# interfaces
.implements Lcom/android/settingslib/miuisettings/preference/PreferenceFeature;


# virtual methods
.method public hasIcon()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const p0, 0x1020040    # @android:id/switch_widget

    .line 41
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->setFilterTouchesWhenObscured(Z)V

    :cond_0
    return-void
.end method
