.class Lcom/android/settings/DeviceAdminAddFragment$3$2;
.super Ljava/lang/Object;
.source "DeviceAdminAddFragment.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAddFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/DeviceAdminAddFragment$3;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAddFragment$3;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3$2;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment$3$2;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    if-eqz p1, :cond_0

    const-string v1, "android.app.extra.DISABLE_WARNING"

    .line 251
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 253
    :goto_0
    invoke-static {v0, p1}, Lcom/android/settings/DeviceAdminAddFragment;->-$$Nest$fputmExtraDisableWarningMsg(Lcom/android/settings/DeviceAdminAddFragment;Ljava/lang/CharSequence;)V

    .line 254
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3$2;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-static {p1}, Lcom/android/settings/DeviceAdminAddFragment;->-$$Nest$fgetmExtraDisableWarningMsg(Lcom/android/settings/DeviceAdminAddFragment;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    .line 256
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3$2;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v0, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 260
    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$3$2;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    goto :goto_1

    .line 262
    :cond_1
    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$3$2;->this$1:Lcom/android/settings/DeviceAdminAddFragment$3;

    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseFragment;->showDialog(I)V

    :goto_1
    return-void
.end method
