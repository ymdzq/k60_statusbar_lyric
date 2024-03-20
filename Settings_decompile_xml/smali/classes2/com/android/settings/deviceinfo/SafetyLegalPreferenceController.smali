.class public Lcom/android/settings/deviceinfo/SafetyLegalPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SafetyLegalPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "safetylegal"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const-string/jumbo p0, "ro.url.safetylegal"

    .line 38
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
