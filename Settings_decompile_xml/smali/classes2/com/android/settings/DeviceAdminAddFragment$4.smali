.class Lcom/android/settings/DeviceAdminAddFragment$4;
.super Ljava/lang/Object;
.source "DeviceAdminAddFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceAdminAddFragment;->onCreateDialog(I)Landroid/app/Dialog;
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

    .line 287
    iput-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$4;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 289
    iget-object p1, p0, Lcom/android/settings/DeviceAdminAddFragment$4;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    iget-object p2, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget-object p1, p1, Lcom/android/settings/DeviceAdminAddFragment;->mDeviceAdmin:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 290
    iget-object p0, p0, Lcom/android/settings/DeviceAdminAddFragment$4;->this$0:Lcom/android/settings/DeviceAdminAddFragment;

    invoke-virtual {p0}, Lcom/android/settings/BaseFragment;->finish()V

    return-void
.end method
