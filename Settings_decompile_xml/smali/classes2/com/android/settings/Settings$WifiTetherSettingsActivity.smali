.class public Lcom/android/settings/Settings$WifiTetherSettingsActivity;
.super Lcom/android/settings/SettingsActivity;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiTetherSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    .line 113
    invoke-static {v0, p0}, Lcom/android/settings/Settings;->-$$Nest$smwrapIntentWithAllInOneTetherSettingsIfNeeded(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 129
    :cond_0
    instance-of v0, p0, Lcom/android/settings/MiuiTetherSettings;

    if-eqz v0, :cond_1

    .line 130
    check-cast p0, Lcom/android/settings/MiuiTetherSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiTetherSettings;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
