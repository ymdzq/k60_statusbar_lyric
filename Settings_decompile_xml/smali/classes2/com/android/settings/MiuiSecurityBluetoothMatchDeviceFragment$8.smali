.class Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$8;
.super Ljava/lang/Object;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .line 671
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$8;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 674
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$8;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    .line 676
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$8;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 677
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$8;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    goto :goto_0

    .line 679
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$8;->this$0:Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;

    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    :goto_0
    return-void
.end method
