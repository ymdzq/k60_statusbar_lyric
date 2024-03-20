.class public Lcom/android/settings/tts/TtsEnginePreference;
.super Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;
.source "TtsEnginePreference.java"


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/RadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 97
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Call to getView() before a call tosetSharedState()"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
