.class public Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity;
.super Lcom/android/settings/SubSettings;
.source "ScreenEnhanceEngineS2hActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    sget p1, Lcom/android/settings/R$string;->screen_enhance_engine_s2h_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    return-void
.end method
