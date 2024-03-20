.class public Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;
.super Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;
.source "SetPrivacyPasswordChooseAccessControl.java"


# instance fields
.field private mPasswordConfirmed:Z

.field private mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPasswordConfirmed:Z

    return-void
.end method


# virtual methods
.method protected enterFromPrivacySettings()Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "extra_data"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "choose_suspend"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public finish()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->enterFromPrivacySettings()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPasswordConfirmed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 80
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 83
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 22
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->onActivityResult(IILandroid/content/Intent;)V

    const p3, 0x46dc1

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPasswordConfirmed:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPasswordConfirmed:Z

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->finish()V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 41
    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPasswordConfirmed:Z

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->finish()V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->onResume()V

    .line 54
    iget-object v0, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->enterFromPrivacySettings()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->finish()V

    return-void

    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 60
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPasswordConfirmed:Z

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "enter_from_settings"

    const/4 v2, 0x1

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const v1, 0x46dc1

    .line 63
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPasswordConfirmed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/privacypassword/SetPrivacyPasswordChooseAccessControl;->mPasswordConfirmed:Z

    .line 72
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
