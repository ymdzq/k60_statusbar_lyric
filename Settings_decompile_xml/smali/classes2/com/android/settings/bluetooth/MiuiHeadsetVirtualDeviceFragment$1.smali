.class Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment$1;
.super Ljava/lang/Object;
.source "MiuiHeadsetVirtualDeviceFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 80
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment;

    invoke-static {p1}, Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment;->-$$Nest$munpairDevice(Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment;)V

    .line 81
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment$1;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetVirtualDeviceFragment;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    return-void
.end method
