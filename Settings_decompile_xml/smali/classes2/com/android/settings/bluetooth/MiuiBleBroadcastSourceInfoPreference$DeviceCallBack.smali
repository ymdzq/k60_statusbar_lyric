.class final Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;
.super Ljava/lang/Object;
.source "MiuiBleBroadcastSourceInfoPreference.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DeviceCallBack"
.end annotation


# instance fields
.field preferenceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;)V
    .locals 1

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 407
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;->preferenceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDeviceAttributesChanged()V
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;->preferenceRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 413
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference$DeviceCallBack;->preferenceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;

    if-eqz p0, :cond_1

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiBleBroadcastSourceInfoPreference;->onDeviceAttributesChanged()V

    :cond_1
    :goto_0
    return-void
.end method
