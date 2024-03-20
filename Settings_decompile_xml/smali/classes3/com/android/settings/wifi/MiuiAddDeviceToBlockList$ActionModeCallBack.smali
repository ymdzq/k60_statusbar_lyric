.class Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;
.super Ljava/lang/Object;
.source "MiuiAddDeviceToBlockList.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;-><init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5

    .line 561
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x1020019    # @android:id/button1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 562
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 563
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto/16 :goto_2

    .line 564
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const v3, 0x102001a    # @android:id/button2

    if-ne v0, v3, :cond_4

    .line 565
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$misAllChecked(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 566
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 567
    move-object p2, p1

    check-cast p2, Lmiuix/view/EditActionMode;

    sget v4, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_dark:I

    invoke-interface {p2, v3, v1, v4}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 570
    :cond_1
    move-object p2, p1

    check-cast p2, Lmiuix/view/EditActionMode;

    sget v4, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_light:I

    invoke-interface {p2, v3, v1, v4}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 573
    :goto_0
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p2, v0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$msetAllBtnsChecked(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V

    goto :goto_1

    .line 575
    :cond_2
    move-object p2, p1

    check-cast p2, Lmiuix/view/EditActionMode;

    sget v4, Lcom/android/settings/R$drawable;->miuix_action_icon_deselect_all_light:I

    invoke-interface {p2, v3, v1, v4}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 578
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p2, v2}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$msetAllBtnsChecked(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V

    .line 580
    :goto_1
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p1

    sget p2, Lcom/android/settings/R$id;->confirm:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    .line 581
    invoke-static {p2}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$mgetCheckedNum(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)I

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$fgetmAccessPointPreferenceList(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    move v0, v2

    .line 580
    :cond_3
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 582
    :cond_4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    sget v0, Lcom/android/settings/R$id;->confirm:I

    if-ne p2, v0, :cond_5

    .line 583
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v3, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p2, v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->block_list_dialog_title:I

    .line 585
    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    sget v3, Lcom/android/settings/R$string;->connected_devices_dialog_content:I

    .line 586
    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    new-instance v0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack$1;-><init>(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;Landroid/view/ActionMode;)V

    const p0, 0x104000a    # @android:string/ok

    .line 587
    invoke-virtual {p2, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->wifi_setup_cancel:I

    .line 601
    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 602
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 603
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_5
    :goto_2
    return v2
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 531
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$fputmEditActionMode(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Landroid/view/ActionMode;)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$msetInActionMode(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v2, Lcom/android/settings/R$menu;->saved_connected_devices:I

    invoke-virtual {v0, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 535
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p2}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$fgetmEditActionMode(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;)Landroid/view/ActionMode;

    move-result-object p2

    sget v0, Lcom/android/settings/R$string;->show_connected_devices_title:I

    invoke-virtual {p2, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 537
    move-object p2, p1

    check-cast p2, Lmiuix/view/EditActionMode;

    sget v0, Lcom/android/settings/R$drawable;->action_mode_title_button_cancel:I

    const v2, 0x1020019    # @android:id/button1

    const/4 v3, 0x0

    invoke-interface {p2, v2, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v0

    const v2, 0x102001a    # @android:id/button2

    if-eqz v0, :cond_0

    .line 542
    sget v0, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_dark:I

    invoke-interface {p2, v2, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    goto :goto_0

    .line 545
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->miuix_action_icon_select_all_light:I

    invoke-interface {p2, v2, v3, v0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    .line 548
    :goto_0
    iget-object p2, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/settings/MiuiUtils;->setNavigationBackground(Landroid/app/Activity;Z)V

    .line 549
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-static {p0, v0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$msetAllBtnsChecked(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V

    .line 550
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p0

    sget p1, Lcom/android/settings/R$id;->confirm:I

    invoke-interface {p0, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 611
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$fputmEditActionMode(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Landroid/view/ActionMode;)V

    .line 612
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;->-$$Nest$msetAllBtnsChecked(Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;Z)V

    .line 613
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/MiuiUtils;->setNavigationBackground(Landroid/app/Activity;Z)V

    .line 614
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiAddDeviceToBlockList$ActionModeCallBack;->this$0:Lcom/android/settings/wifi/MiuiAddDeviceToBlockList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    .line 615
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
