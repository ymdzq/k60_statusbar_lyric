.class Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;
.super Ljava/lang/Object;
.source "NewFingerprintInternalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 617
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object p1, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_3

    .line 619
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_3

    .line 620
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object v0, v0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/settings/FingerprintManageSetting;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$misNewFingerprintInternalActivity(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 622
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    .line 623
    invoke-static {}, Lcom/android/settings/FingerprintManageSetting;->getExtraFragmentName()Ljava/lang/String;

    move-result-object v2

    .line 624
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    sget v3, Lcom/android/settings/R$string;->empty_title:I

    .line 622
    invoke-static {v0, v2, v1, p1, v3}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->startFragment(Landroidx/fragment/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 625
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    return-void

    .line 629
    :cond_1
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->-$$Nest$fgetmIntentForExtern(Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 630
    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setSettingsSplit(Landroid/content/Intent;)V

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 633
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {p1}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    .line 636
    :cond_3
    iget-object p1, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    iget-object p1, p1, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->mActivity:Landroid/app/Activity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 637
    iget-object p0, p0, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment$10;->this$0:Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;

    invoke-virtual {p0}, Lcom/android/settings/NewFingerprintInternalActivity$NewFingerprintFragment;->finish()V

    return-void
.end method
