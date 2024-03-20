.class public Lcom/android/settings/MiuiGxzwAnimSettingsActivity;
.super Landroid/app/Activity;
.source "MiuiGxzwAnimSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startAnotherActivityForResult()V
    .locals 3

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.MiuiGxzwAnimSettingsInternalActivity"

    .line 33
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x65

    .line 34
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 27
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "miui.permission.USE_INTERNAL_GENERAL_API"

    .line 18
    invoke-virtual {p0, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsActivity;->startAnotherActivityForResult()V

    return-void

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Need miui.permission.USE_INTERNAL_GENERAL_API permission to access"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
