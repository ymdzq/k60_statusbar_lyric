.class public abstract Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "P2pCategoryPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field protected mCategory:Landroidx/preference/PreferenceGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addChild(Landroidx/preference/Preference;)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/android/settingslib/core/AbstractPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroidx/preference/PreferenceGroup;

    .line 47
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public removeAllChildren()V
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;->mCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
