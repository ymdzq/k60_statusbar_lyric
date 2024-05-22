.class public abstract Lcom/android/wm/shell/dagger/WMShellModule_ProvideMiuiInfiniteModeTaskRepositoryFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideMiuiInfiniteModeTaskRepository()Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;

    .line 2
    invoke-direct {v0}, Lcom/android/wm/shell/miuifreeform/MiuiInfinityModeTaskRepository;-><init>()V

    .line 4
    return-object v0
    .line 7
.end method
