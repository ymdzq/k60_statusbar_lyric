.class public abstract Lcom/android/systemui/settings/dagger/MultiUserUtilsModule_ProvideDisplayTrackerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideDisplayTracker(Landroid/hardware/display/DisplayManager;Landroid/os/Handler;)Lcom/android/systemui/settings/DisplayTrackerImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/settings/DisplayTrackerImpl;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/settings/DisplayTrackerImpl;-><init>(Landroid/hardware/display/DisplayManager;Landroid/os/Handler;)V

    .line 4
    return-object v0
    .line 7
.end method
