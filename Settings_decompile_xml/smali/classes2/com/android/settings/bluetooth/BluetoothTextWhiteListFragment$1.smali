.class Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$1;
.super Ljava/lang/Object;
.source "BluetoothTextWhiteListFragment.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$ListTextWatcher$Inputcallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nullContent(Z)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;

    invoke-virtual {v0}, Lcom/android/settings/BaseEditFragment;->isEditEabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 53
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothTextWhiteListFragment;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/BaseEditFragment;->onEditStateChange(Z)V

    :cond_0
    return-void
.end method
