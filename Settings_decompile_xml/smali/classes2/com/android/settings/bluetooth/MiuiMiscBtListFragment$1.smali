.class Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$1;
.super Ljava/lang/Object;
.source "MiuiMiscBtListFragment.java"

# interfaces
.implements Lmiui/bluetooth/ble/MiBleDeviceManager$MiBleDeviceManagerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 70
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->-$$Nest$fputmMiBleDeviceManagerInited(Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;Z)V

    return-void
.end method

.method public onInit(Lmiui/bluetooth/ble/MiBleDeviceManager;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->-$$Nest$fputmMiBleDeviceManagerInited(Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;Z)V

    .line 65
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiMiscBtListFragment;->updatePreferences()V

    return-void
.end method
