.class public Lcom/android/settingslib/miuisettings/preference/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static isVisible(Landroidx/preference/Preference;)Z
    .locals 0

    .line 20
    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result p0

    return p0
.end method

.method public static setVisible(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
