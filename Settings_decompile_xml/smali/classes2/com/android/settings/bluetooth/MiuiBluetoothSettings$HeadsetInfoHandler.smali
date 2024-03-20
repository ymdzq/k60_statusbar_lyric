.class final Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;
.super Landroid/os/Handler;
.source "MiuiBluetoothSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeadsetInfoHandler"
.end annotation


# instance fields
.field private miuiBluetoothSettingsRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiBluetoothSettings;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Landroid/os/Looper;Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    .line 179
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 180
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;->miuiBluetoothSettingsRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 186
    :try_start_0
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 p1, 0x1

    if-eq v0, p1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$mcheckBluetoothPackageInfo(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    goto :goto_1

    .line 205
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/LocationUtil;->removeLastLocation(Landroid/content/Context;)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;->miuiBluetoothSettingsRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_3

    .line 198
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    .line 201
    invoke-static {p0}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$mcheckEnableHelpPreference(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;)V

    goto :goto_1

    .line 189
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 190
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    invoke-static {v0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$mcheckHeadsetSurpportMiuiFragment(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Landroid/bluetooth/BluetoothDevice;)V

    .line 191
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings$HeadsetInfoHandler;->this$0:Lcom/android/settings/bluetooth/MiuiBluetoothSettings;

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mPreloadPlugin:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->mQigsawInstalled:Z

    if-nez p1, :cond_5

    const-string p1, "java"

    .line 192
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$mstartQigsawInstaller(Lcom/android/settings/bluetooth/MiuiBluetoothSettings;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 214
    invoke-static {}, Lcom/android/settings/bluetooth/MiuiBluetoothSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handler error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method
