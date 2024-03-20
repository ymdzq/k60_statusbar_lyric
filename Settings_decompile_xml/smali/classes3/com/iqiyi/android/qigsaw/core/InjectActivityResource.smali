.class Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;
.super Ljava/lang/Object;
.source "InjectActivityResource.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static cb:Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inject(Landroid/app/Application;)V
    .locals 1

    .line 17
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/common/CompatBundle;->instance:Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/iqiyi/android/qigsaw/core/common/ICompatBundle;->injectActivityResource()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;->cb:Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;

    invoke-direct {v0}, Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;->cb:Lcom/iqiyi/android/qigsaw/core/InjectActivityResource;

    .line 19
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/play/core/splitinstall/SplitInstallHelper;->loadResources(Landroid/app/Activity;Landroid/content/res/Resources;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 0
    return-void
.end method
