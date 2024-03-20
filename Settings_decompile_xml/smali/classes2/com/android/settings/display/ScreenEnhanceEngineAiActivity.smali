.class public Lcom/android/settings/display/ScreenEnhanceEngineAiActivity;
.super Lcom/android/settings/SubSettings;
.source "ScreenEnhanceEngineAiActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget p1, Lcom/android/settings/R$string;->screen_enhance_engine_ai_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(I)V

    return-void
.end method
