.class public interface abstract Lcom/miui/tsmclient/service/IMiTsmCleanSeService;
.super Ljava/lang/Object;
.source "IMiTsmCleanSeService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/tsmclient/service/IMiTsmCleanSeService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cleanSeCard(Lcom/miui/tsmclient/service/ICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract keepSeCard(Lcom/miui/tsmclient/service/ICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract querySeCard(Lcom/miui/tsmclient/service/ICallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
