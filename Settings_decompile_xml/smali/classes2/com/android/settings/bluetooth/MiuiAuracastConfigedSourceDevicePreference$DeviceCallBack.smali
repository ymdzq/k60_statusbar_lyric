.class final Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;
.super Ljava/lang/Object;
.source "MiuiAuracastConfigedSourceDevicePreference.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;
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
            "Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;)V
    .locals 1

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;->preferenceRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDeviceAttributesChanged()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;->preferenceRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference$DeviceCallBack;->preferenceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;

    if-eqz p0, :cond_1

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/MiuiAuracastConfigedSourceDevicePreference;->onDeviceAttributesChanged()V

    :cond_1
    :goto_0
    return-void
.end method
