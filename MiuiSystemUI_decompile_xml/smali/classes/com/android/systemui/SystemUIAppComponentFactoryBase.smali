.class public abstract Lcom/android/systemui/SystemUIAppComponentFactoryBase;
.super Landroidx/core/app/AppComponentFactory;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;


# instance fields
.field public componentHelper:Lcom/android/systemui/dagger/ContextComponentHelper;


# direct methods
.method public static final access$createSystemUIInitializerInternal(Lcom/android/systemui/SystemUIAppComponentFactoryBase;Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "Failed to initialize SysUI"

    .line 5
    sget-object v1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 15
    invoke-static {p1}, Lcom/android/systemui/SystemUIInitializerFactory;->createFromConfigNoAssert(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    .line 18
    move-result-object v1

    .line 21
    const/4 p1, 0x0

    .line 22
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/systemui/SystemUIInitializer;->init(Z)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    .line 26
    move-result-object p1

    .line 29
    invoke-interface {p1, p0}, Lcom/android/systemui/dagger/SysUIComponent;->inject(Lcom/android/systemui/SystemUIAppComponentFactoryBase;)V

    .line 30
    sput-object v1, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->systemUIInitializer:Lcom/android/systemui/SystemUIInitializer;

    .line 33
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    new-instance p1, Ljava/lang/RuntimeException;

    .line 37
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    throw p1

    .line 42
    :catch_1
    move-exception p0

    .line 43
    new-instance p1, Ljava/lang/RuntimeException;

    .line 44
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    throw p1

    .line 49
    :cond_0
    :goto_0
    return-object v1
    .line 50
.end method
