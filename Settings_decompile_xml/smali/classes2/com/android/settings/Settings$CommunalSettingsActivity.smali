.class public Lcom/android/settings/Settings$CommunalSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommunalSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 388
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 391
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 392
    invoke-static {p0}, Lcom/android/settings/communal/CommunalPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    :cond_0
    return-void
.end method
