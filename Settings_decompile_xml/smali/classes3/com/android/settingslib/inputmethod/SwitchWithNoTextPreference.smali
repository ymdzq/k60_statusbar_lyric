.class public Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.super Lcom/android/settingslib/miuisettings/preference/SwitchPreference;
.source "SwitchWithNoTextPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/android/settingslib/miuisettings/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 27
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {p0, p1}, Landroidx/preference/SwitchPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method
