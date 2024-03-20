.class public interface abstract Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback;
.super Ljava/lang/Object;
.source "IMiuiHeadsetCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/ble/app/IMiuiHeadsetCallback$Stub;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.bluetooth.ble.app.IMiuiHeadsetCallback"


# virtual methods
.method public abstract refreshStatus(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
