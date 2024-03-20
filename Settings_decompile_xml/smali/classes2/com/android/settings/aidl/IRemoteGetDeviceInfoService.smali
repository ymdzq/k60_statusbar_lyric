.class public interface abstract Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;
.super Ljava/lang/Object;
.source "IRemoteGetDeviceInfoService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/aidl/IRemoteGetDeviceInfoService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDeviceInfo(ILjava/util/Map;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerCallback(Lcom/android/settings/aidl/IRequestCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisteCallback(Lcom/android/settings/aidl/IRequestCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
