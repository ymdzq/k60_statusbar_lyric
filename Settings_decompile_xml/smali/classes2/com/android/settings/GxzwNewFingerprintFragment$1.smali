.class Lcom/android/settings/GxzwNewFingerprintFragment$1;
.super Ljava/lang/Object;
.source "GxzwNewFingerprintFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GxzwNewFingerprintFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GxzwNewFingerprintFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/GxzwNewFingerprintFragment;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$1;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 371
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$1;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_2

    .line 373
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$1;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmNeedToManager(Lcom/android/settings/GxzwNewFingerprintFragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 374
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$1;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/FingerprintManageSetting;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$1;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {v0}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmIntentForExtern(Lcom/android/settings/GxzwNewFingerprintFragment;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setSettingsSplit(Landroid/content/Intent;)V

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$1;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 381
    :cond_2
    iget-object p1, p0, Lcom/android/settings/GxzwNewFingerprintFragment$1;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-static {p1}, Lcom/android/settings/GxzwNewFingerprintFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/GxzwNewFingerprintFragment;)Landroid/app/Activity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 382
    iget-object p0, p0, Lcom/android/settings/GxzwNewFingerprintFragment$1;->this$0:Lcom/android/settings/GxzwNewFingerprintFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method
