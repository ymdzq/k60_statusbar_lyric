.class public interface abstract Lorg/codeaurora/internal/IExtTelephony;
.super Ljava/lang/Object;
.source "IExtTelephony.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/internal/IExtTelephony$Stub;
    }
.end annotation


# virtual methods
.method public abstract hasGetIccFileHandler(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract readEfFromIcc(III)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract writeEfToIcc(III[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
