.class public Lcom/android/settings/security/FakeCellPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FakeCellPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "manage_fakecell_settings"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 17
    invoke-static {}, Lcom/android/settings/FakeCellSettings;->supportDetectFakecell()Z

    move-result p0

    return p0
.end method
