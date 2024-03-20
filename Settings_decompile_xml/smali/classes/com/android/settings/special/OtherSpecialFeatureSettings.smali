.class public Lcom/android/settings/special/OtherSpecialFeatureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OtherSpecialFeatureSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "OtherSpecialFeatureSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 12
    sget p0, Lcom/android/settings/R$xml;->other_special_function_settings:I

    return p0
.end method
