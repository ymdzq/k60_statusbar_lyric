.class public interface abstract Lcom/android/settings/aidl/IRequestCallback;
.super Ljava/lang/Object;
.source "IRequestCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/aidl/IRequestCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRequestComplete(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
