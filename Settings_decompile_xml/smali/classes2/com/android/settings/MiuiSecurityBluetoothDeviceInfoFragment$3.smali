.class Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 210
    new-instance p1, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3$1;

    invoke-direct {p1, p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3$1;-><init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;)V

    .line 221
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->bluetooth_unlock_delete_device_confirm_msg:I

    .line 222
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 223
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x104000a    # @android:string/ok

    .line 224
    invoke-virtual {p0, v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 225
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
