.class public interface abstract Lcom/android/bluetooth/ble/app/IWifiInfoCallback;
.super Ljava/lang/Object;
.source "IWifiInfoCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/IWifiInfoCallback$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.bluetooth.ble.app.IWifiInfoCallback"


# virtual methods
.method public abstract wifiInfoCallBack(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
