.class public abstract Lcom/android/provision/IProvisionAnim$Stub;
.super Landroid/os/Binder;
.source "IProvisionAnim.java"

# interfaces
.implements Lcom/android/provision/IProvisionAnim;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/provision/IProvisionAnim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/provision/IProvisionAnim$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/provision/IProvisionAnim;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.provision.IProvisionAnim"

    .line 58
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Lcom/android/provision/IProvisionAnim;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lcom/android/provision/IProvisionAnim;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Lcom/android/provision/IProvisionAnim$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/provision/IProvisionAnim$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/provision/IProvisionAnim;
    .locals 1

    .line 269
    sget-object v0, Lcom/android/provision/IProvisionAnim$Stub$Proxy;->sDefaultImpl:Lcom/android/provision/IProvisionAnim;

    return-object v0
.end method
