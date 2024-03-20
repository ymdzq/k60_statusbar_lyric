.class public abstract Lcom/miui/cloudservice/IPasspointKeyInterface$Stub;
.super Landroid/os/Binder;
.source "IPasspointKeyInterface.java"

# interfaces
.implements Lcom/miui/cloudservice/IPasspointKeyInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/cloudservice/IPasspointKeyInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/cloudservice/IPasspointKeyInterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/cloudservice/IPasspointKeyInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.miui.cloudservice.IPasspointKeyInterface"

    .line 36
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    instance-of v1, v0, Lcom/miui/cloudservice/IPasspointKeyInterface;

    if-eqz v1, :cond_1

    .line 38
    check-cast v0, Lcom/miui/cloudservice/IPasspointKeyInterface;

    return-object v0

    .line 40
    :cond_1
    new-instance v0, Lcom/miui/cloudservice/IPasspointKeyInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/miui/cloudservice/IPasspointKeyInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
