.class public Lcom/android/settings/PrivacyPasswordChooseLockPattern;
.super Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;
.source "PrivacyPasswordChooseLockPattern.java"


# instance fields
.field private mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/PrivacyPasswordChooseLockPattern;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 28
    invoke-virtual {p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->isUsedPrivacyInBussiness()Z

    move-result p1

    if-nez p1, :cond_0

    .line 29
    iget-object p0, p0, Lcom/android/settings/PrivacyPasswordChooseLockPattern;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setUsedPrivacyInBussiness(Z)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->onResume()V

    .line 47
    invoke-static {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacyPasswordChooseLockPattern;->mPrivacyPasswordManager:Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    .line 48
    invoke-virtual {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->havePattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacyPasswordChooseLockPattern;->setBackText(Ljava/lang/String;)V

    return-void
.end method

.method protected setBackText(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 35
    new-instance v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;

    invoke-direct {v0}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;-><init>()V

    .line 36
    invoke-static {}, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->getBussinessPackageInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->privacyChooseAccessControlBackTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/privacypassword/BussinessPackageInfo;->backText:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->bigTitle:Landroid/widget/TextView;

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
