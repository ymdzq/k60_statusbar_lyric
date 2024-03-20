.class public abstract Lcom/xiaomi/account/IXiaomiAuthService$Stub;
.super Landroid/os/Binder;
.source "IXiaomiAuthService.java"

# interfaces
.implements Lcom/xiaomi/account/IXiaomiAuthService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/account/IXiaomiAuthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/IXiaomiAuthService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaomi/account/IXiaomiAuthService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaomi.account.IXiaomiAuthService"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/xiaomi/account/IXiaomiAuthService;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/xiaomi/account/IXiaomiAuthService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaomi/account/IXiaomiAuthService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
