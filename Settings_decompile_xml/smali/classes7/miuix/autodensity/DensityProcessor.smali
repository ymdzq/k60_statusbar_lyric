.class public abstract Lmiuix/autodensity/DensityProcessor;
.super Ljava/lang/Object;
.source "DensityProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/autodensity/DensityProcessor$DensityCallback;,
        Lmiuix/autodensity/DensityProcessor$DensityProcessorLifecycleCallbacks;
    }
.end annotation


# instance fields
.field protected mDisplayManager:Landroid/hardware/display/DisplayManager;

.field protected mModifier:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lmiuix/autodensity/DensityProcessor$DensityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public abstract isEnableProcessInActivity(Landroid/app/Activity;)Z
.end method

.method protected onDensityChangedBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V
    .locals 0

    .line 80
    invoke-static {p2, p3}, Lmiuix/core/util/EnvStateManager;->updateWindowSizeByConfig(Landroid/content/res/Configuration;Lmiuix/core/util/WindowBaseInfo;)V

    .line 81
    invoke-static {p1, p3}, Lmiuix/core/util/EnvStateManager;->updateWindowMode(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 82
    invoke-static {p1}, Lmiuix/core/util/EnvStateManager;->markEnvStateDirty(Landroid/content/Context;)V

    .line 83
    invoke-static {p3}, Lmiuix/core/util/EnvStateManager;->markWindowInfoDirty(Lmiuix/core/util/WindowBaseInfo;)V

    return-void
.end method

.method protected onDensityChangedOnActivityCreated(Landroid/app/Activity;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lmiuix/autodensity/DensityProcessor;->registerCallback(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDensityChangedOnActivityDisplayChanged(ILandroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onDensityChangedOnAppConfigChanged(Landroid/app/Application;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onRegisterDensityCallback(Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected abstract prepareInApplication(Landroid/app/Application;)V
.end method

.method protected abstract processBeforeActivityConfigChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
.end method

.method protected abstract processOnActivityCreated(Landroid/app/Activity;)V
.end method

.method protected abstract processOnActivityDestroyed(Landroid/app/Activity;)V
.end method

.method protected abstract processOnActivityDisplayChanged(ILandroid/app/Activity;)V
.end method

.method protected abstract processOnAppConfigChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
.end method

.method protected registerCallback(Landroid/app/Activity;)V
    .locals 3

    .line 30
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "display"

    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 34
    :cond_0
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    .line 37
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 39
    iget-object v1, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    if-nez v1, :cond_2

    .line 41
    new-instance v1, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    invoke-direct {v1, p0, p1, p0}, Lmiuix/autodensity/DensityProcessor$DensityCallback;-><init>(Lmiuix/autodensity/DensityProcessor;Landroid/app/Activity;Lmiuix/autodensity/DensityProcessor;)V

    .line 42
    iget-object v2, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 45
    invoke-virtual {p1, v1}, Landroid/app/Activity;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_2
    return-void
.end method

.method protected unregisterCallback(Landroid/app/Activity;)V
    .locals 4

    .line 50
    iget-object v0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 52
    iget-object v1, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/autodensity/DensityProcessor$DensityCallback;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback obj: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiuix/autodensity/DebugUtil;->printDensityLog(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {p0, v1}, Lmiuix/autodensity/DensityProcessor;->unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V

    .line 56
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/app/Activity;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 58
    invoke-virtual {v1, p1}, Lmiuix/autodensity/DensityProcessor$DensityCallback;->removeOnAttachStateChangeListener(Landroid/app/Activity;)V

    .line 59
    invoke-virtual {v1}, Lmiuix/autodensity/DensityProcessor$DensityCallback;->clear()V

    .line 61
    :cond_0
    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor;->mModifier:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected unregisterDisplayListener(Lmiuix/autodensity/DensityProcessor$DensityCallback;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lmiuix/autodensity/DensityProcessor;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method
