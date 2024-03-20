.class final Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;
.super Ljava/lang/Object;
.source "SplitActivator.java"


# static fields
.field private static final sSplitApplicationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

.field private final appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->sSplitApplicationMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    .line 49
    invoke-static {}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->getInstance()Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    return-void
.end method

.method private debuggable()Z
    .locals 1

    const/4 v0, 0x0

    .line 102
    :try_start_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 103
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catchall_0
    :cond_0
    return v0
.end method


# virtual methods
.method attachSplitApplication(Landroid/app/Application;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->appContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->activeApplication(Landroid/app/Application;Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 v0, -0x19

    invoke-direct {p1, v0, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method createAndActivateSplitContentProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object p0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-virtual {p0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->createAndActivateSplitProviders(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 96
    new-instance p1, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 p2, -0x1a

    invoke-direct {p1, p2, p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method createSplitApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->aabExtension:Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;

    invoke-virtual {v0, p1, p2}, Lcom/iqiyi/android/qigsaw/core/extension/AABExtension;->createApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 57
    sget-object v0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->sSplitApplicationMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    .line 60
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->debuggable()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 61
    instance-of p0, p1, Lcom/iqiyi/android/qigsaw/core/extension/AABExtensionException;

    if-nez p0, :cond_1

    .line 62
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 65
    :cond_1
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 p2, -0x18

    invoke-direct {p0, p2, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p0
.end method

.method invokeOnCreateForSplitApplication(Landroid/app/Application;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 81
    :try_start_0
    const-class v0, Landroid/app/Application;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/iqiyi/android/qigsaw/core/splitload/HiddenApiReflection;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 82
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 84
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitActivator;->debuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 85
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    .line 87
    :cond_0
    new-instance p0, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;

    const/16 v0, -0x19

    invoke-direct {p0, v0, p1}, Lcom/iqiyi/android/qigsaw/core/splitload/SplitLoadException;-><init>(ILjava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
