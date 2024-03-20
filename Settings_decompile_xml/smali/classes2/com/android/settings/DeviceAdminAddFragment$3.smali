.class Lcom/android/settings/DeviceAdminAddFragment$3;
.super Ljava/lang/Object;
.source "DeviceAdminAddFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAddFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceAdminAddFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceAdminAddFragment;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 212
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-boolean v0, p1, Lcom/android/settings/DeviceAdminAddFragment;->mAdding:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    .line 214
    :try_start_0
    iget-object v1, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-boolean v2, v2, Lcom/android/settings/DeviceAdminAddFragment;->mRefreshing:Z

    invoke-virtual {v1, p1, v2}, Landroid/app/admin/DevicePolicyManager;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 215
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {p1, v0}, Lcom/android/settings/BaseFragment;->setResult(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception trying to activate admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v2, v2, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 220
    invoke-virtual {v2}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceAdminAdd"

    .line 219
    invoke-static {v2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v1, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {p1, v0}, Lcom/android/settings/BaseFragment;->setResult(I)V

    .line 225
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    goto :goto_1

    .line 226
    :cond_1
    iget-object v0, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-static {p1, v0}, Lcom/android/settings/DeviceAdminAddFragment;->-$$Nest$misManagedProfile(Lcom/android/settings/DeviceAdminAddFragment;Landroid/app/admin/DeviceAdminInfo;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    .line 227
    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v0, v0, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getProfileOwner()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 228
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 229
    iget-object v0, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/DeviceAdminAddFragment$3$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/DeviceAdminAddFragment$3$1;-><init>(Lcom/android/settings/DeviceAdminAddFragment$3;I)V

    invoke-static {v0, p1, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 243
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 246
    :catch_1
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object v0, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/settings/DeviceAdminAddFragment$3$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DeviceAdminAddFragment$3$2;-><init>(Lcom/android/settings/DeviceAdminAddFragment$3;)V

    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$3;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/admin/DevicePolicyManager;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    :goto_1
    return-void
.end method
