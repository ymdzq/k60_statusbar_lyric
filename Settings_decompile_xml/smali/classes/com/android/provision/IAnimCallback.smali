.class public interface abstract Lcom/android/provision/IAnimCallback;
.super Ljava/lang/Object;
.source "IAnimCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/provision/IAnimCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBackAnimStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onNextAminStart()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
