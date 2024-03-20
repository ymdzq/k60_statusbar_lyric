.class public interface abstract Lcom/android/settings/services/IMemoryOptimizationInterface;
.super Ljava/lang/Object;
.source "IMemoryOptimizationInterface.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/services/IMemoryOptimizationInterface$Stub;
    }
.end annotation


# virtual methods
.method public abstract startMemoryOptimization(Landroid/content/Intent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
