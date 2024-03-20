.class public Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;
.super Ljava/lang/Object;
.source "FooterPreferenceMixinCompat.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;


# instance fields
.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;


# virtual methods
.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
