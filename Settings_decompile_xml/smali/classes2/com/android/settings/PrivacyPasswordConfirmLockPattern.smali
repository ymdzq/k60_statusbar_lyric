.class public Lcom/android/settings/PrivacyPasswordConfirmLockPattern;
.super Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;
.source "PrivacyPasswordConfirmLockPattern.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 14
    invoke-super {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/PrivacyPasswordConfirmLockPattern;->setBackText(Ljava/lang/String;)V

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isUsedPrivacyInBussiness()Z

    move-result p1

    if-nez p1, :cond_2

    .line 21
    iget-object p0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setUsedPrivacyInBussiness(Z)V

    :cond_2
    return-void
.end method

.method protected setBackText(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 27
    new-instance v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;

    invoke-direct {v0}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;-><init>()V

    .line 28
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->getBussinessPackageInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    if-eqz p1, :cond_0

    .line 30
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->privacyPasswordConfirmBackTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/privacypassword/BussinessPackageInfo;->backText:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordConfirmAccessControl;->bigTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, p1, Lcom/android/settings/privacypassword/BussinessPackageInfo;->backText:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
