.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideFloatingContentCoordinatorFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideFloatingContentCoordinator()Lcom/android/wm/shell/common/FloatingContentCoordinator;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/common/FloatingContentCoordinator;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/common/FloatingContentCoordinator;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method
