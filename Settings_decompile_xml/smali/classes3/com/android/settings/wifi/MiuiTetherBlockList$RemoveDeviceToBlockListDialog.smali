.class Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;
.super Ljava/lang/Object;
.source "MiuiTetherBlockList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/MiuiTetherBlockList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoveDeviceToBlockListDialog"
.end annotation


# instance fields
.field private mConfigureConfirmed:Z

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private macAddress:Landroid/net/MacAddress;

.field final synthetic this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/MiuiTetherBlockList;Landroid/net/MacAddress;)V
    .locals 2

    .line 227
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 229
    iput-object p2, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->macAddress:Landroid/net/MacAddress;

    .line 231
    invoke-virtual {p2}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p2

    .line 232
    sget v0, Lcom/android/settings/R$string;->block_list_remove_dialog_title:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 233
    sget v1, Lcom/android/settings/R$string;->block_list_remove_dialog_content:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 235
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 237
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x1010355    # @android:attr/alertDialogIcon

    .line 238
    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIconAttribute(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a    # @android:string/ok

    .line 239
    invoke-virtual {p1, p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000    # @android:string/cancel

    .line 240
    invoke-virtual {p1, p2, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 242
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/MiuiTetherBlockList;Landroid/net/MacAddress;Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;-><init>(Lcom/android/settings/wifi/MiuiTetherBlockList;Landroid/net/MacAddress;)V

    return-void
.end method

.method private removePreference()V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    .line 282
    :goto_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 283
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 284
    iget-object v3, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-virtual {v3, v2}, Lcom/android/settings/wifi/MiuiTetherBlockList;->getPreferenceMacAddress(Landroidx/preference/Preference;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->getDeviceInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getDeviceInfo()Ljava/lang/String;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isShowing()Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 256
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->mConfigureConfirmed:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 261
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/wifi/MiuiTetherBlockList;->-$$Nest$fputmDialogShow(Lcom/android/settings/wifi/MiuiTetherBlockList;Z)V

    .line 263
    iget-boolean p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->mConfigureConfirmed:Z

    if-eqz p1, :cond_1

    .line 265
    invoke-direct {p0}, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->removePreference()V

    .line 268
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/MiuiUtils;->isSapBlacklistOffloadSupport(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiTetherBlockList;->-$$Nest$fgetmMiuiWifiManager(Lcom/android/settings/wifi/MiuiTetherBlockList;)Landroid/net/wifi/MiuiWifiManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/wifi/MiuiWifiManager;->delHotSpotMacBlackListOffload(Ljava/lang/String;)Z

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiTetherBlockList;->-$$Nest$fgetmBlockList(Lcom/android/settings/wifi/MiuiTetherBlockList;)Ljava/util/Set;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->macAddress:Landroid/net/MacAddress;

    invoke-virtual {v1}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 273
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-static {v2}, Lcom/android/settings/wifi/MiuiTetherBlockList;->-$$Nest$fgetmBlockList(Lcom/android/settings/wifi/MiuiTetherBlockList;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/MiuiUtils;->setHotSpotMacBlackSet(Landroid/content/Context;Ljava/util/Set;)V

    .line 274
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiTetherBlockList;->-$$Nest$mrefresh(Lcom/android/settings/wifi/MiuiTetherBlockList;)V

    .line 276
    iput-boolean v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->mConfigureConfirmed:Z

    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->this$0:Lcom/android/settings/wifi/MiuiTetherBlockList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/MiuiTetherBlockList;->-$$Nest$fputmDialogShow(Lcom/android/settings/wifi/MiuiTetherBlockList;Z)V

    .line 247
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiTetherBlockList$RemoveDeviceToBlockListDialog;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
