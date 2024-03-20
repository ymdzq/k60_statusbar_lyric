.class Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;
.super Landroid/text/style/ClickableSpan;
.source "FingerprintManageSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;->showFingerprintTipsForCts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

.field final synthetic val$a:Landroid/app/Activity;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->this$0:Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment;

    iput-object p2, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "admin_details"

    .line 487
    iget-object v0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->val$key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 488
    iget-object p1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->val$a:Landroid/app/Activity;

    const/16 v0, 0x20

    .line 489
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 488
    invoke-static {p1, v0, v1}, Lcom/android/settings/compat/RestrictedLockUtilsCompat;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 490
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->val$a:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "url"

    .line 491
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->val$key:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    .line 497
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const-string v0, "admin_details"

    .line 498
    iget-object v1, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p0, -0xffff01

    .line 499
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "url"

    .line 500
    iget-object p0, p0, Lcom/android/settings/FingerprintManageSetting$FingerprintManageFragment$9;->val$key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 502
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 504
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
