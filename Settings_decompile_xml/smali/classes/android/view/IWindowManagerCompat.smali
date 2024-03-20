.class public Landroid/view/IWindowManagerCompat;
.super Ljava/lang/Object;
.source "IWindowManagerCompat.java"


# direct methods
.method public static hasNavigationBar(Landroid/view/IWindowManager;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11
    invoke-interface {p0, p1}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result p0

    return p0
.end method
