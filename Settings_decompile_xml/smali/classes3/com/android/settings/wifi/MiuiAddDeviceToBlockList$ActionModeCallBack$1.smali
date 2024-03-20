.class Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;
.super Ljava/lang/Object;
.source "MiuiAddDeviceToBlockList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;

.field final synthetic val$actionMode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;Landroid/view/ActionMode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 587
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;->this$1:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;

    iput-object p2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 590
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;->this$1:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$mdeleteSavedConfigs(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V

    .line 591
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;->val$actionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->confirm:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 592
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;->this$1:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;

    iget-object p1, p1, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p1

    const/4 p2, 0x0

    const v0, 0x102001a    # @android:id/button2

    if-eqz p1, :cond_0

    .line 593
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;->val$actionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_dark:I

    invoke-interface {p0, v0, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 596
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;->val$actionMode:Landroid/view/ActionMode;

    check-cast p0, Lmiuix/view/EditActionMode;

    sget p1, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_light:I

    invoke-interface {p0, v0, p2, p1}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method
