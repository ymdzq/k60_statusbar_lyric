.class Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3$1;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3$1;->this$1:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 214
    new-instance p2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3$1;->this$1:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;

    iget-object v0, v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3$1;->this$1:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;

    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;->this$0:Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-direct {p2, v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 p0, 0x64

    .line 215
    invoke-virtual {p2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launch()Z

    .line 217
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
