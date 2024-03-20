.class public interface abstract Lcom/miui/cloudservice/IPasspointKeyInterface;
.super Ljava/lang/Object;
.source "IPasspointKeyInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/IPasspointKeyInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPassword(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
