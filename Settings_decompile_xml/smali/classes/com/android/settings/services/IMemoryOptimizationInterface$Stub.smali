.class public abstract Lcom/android/settings/services/IMemoryOptimizationInterface$Stub;
.super Landroid/os/Binder;
.source "IMemoryOptimizationInterface.java"

# interfaces
.implements Lcom/android/settings/services/IMemoryOptimizationInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/services/IMemoryOptimizationInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/services/IMemoryOptimizationInterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/settings/services/IMemoryOptimizationInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.settings.services.IMemoryOptimizationInterface"

    .line 35
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    instance-of v1, v0, Lcom/android/settings/services/IMemoryOptimizationInterface;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/android/settings/services/IMemoryOptimizationInterface;

    return-object v0

    .line 39
    :cond_1
    new-instance v0, Lcom/android/settings/services/IMemoryOptimizationInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/settings/services/IMemoryOptimizationInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/settings/services/IMemoryOptimizationInterface;
    .locals 1

    .line 137
    sget-object v0, Lcom/android/settings/services/IMemoryOptimizationInterface$Stub$Proxy;->sDefaultImpl:Lcom/android/settings/services/IMemoryOptimizationInterface;

    return-object v0
.end method
