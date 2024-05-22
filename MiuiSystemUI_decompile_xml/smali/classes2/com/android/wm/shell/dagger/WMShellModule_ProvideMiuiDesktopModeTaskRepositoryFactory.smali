.class public abstract Lcom/android/wm/shell/dagger/WMShellModule_ProvideMiuiDesktopModeTaskRepositoryFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideMiuiDesktopModeTaskRepository()Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeTaskRepository;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method
