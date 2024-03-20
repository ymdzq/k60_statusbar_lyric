.class public interface abstract Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback;
.super Ljava/lang/Object;
.source "IEasyTetherCoreCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/IEasyTetherCoreCallback$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.bluetooth.ble.app.IEasyTetherCoreCallback"


# virtual methods
.method public abstract onApConnectFail(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onApInfoUpdate(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onApSupportAutoConnect(Lcom/android/bluetooth/ble/app/EasyTetherHotspotEntry;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
