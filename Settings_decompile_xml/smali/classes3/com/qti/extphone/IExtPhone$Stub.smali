.class public abstract Lcom/qti/extphone/IExtPhone$Stub;
.super Landroid/os/Binder;
.source "IExtPhone.java"

# interfaces
.implements Lcom/qti/extphone/IExtPhone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/IExtPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/extphone/IExtPhone$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/qti/extphone/IExtPhone;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.qti.extphone.IExtPhone"

    .line 719
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 720
    instance-of v1, v0, Lcom/qti/extphone/IExtPhone;

    if-eqz v1, :cond_1

    .line 721
    check-cast v0, Lcom/qti/extphone/IExtPhone;

    return-object v0

    .line 723
    :cond_1
    new-instance v0, Lcom/qti/extphone/IExtPhone$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/qti/extphone/IExtPhone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
