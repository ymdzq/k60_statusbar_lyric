.class public final Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;


# instance fields
.field public final synthetic $contentProvider:Landroid/content/ContentProvider;

.field public final synthetic this$0:Lcom/android/systemui/SystemUIAppComponentFactoryBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/SystemUIAppComponentFactoryBase;Landroid/content/ContentProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;->this$0:Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;->$contentProvider:Landroid/content/ContentProvider;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;
    .locals 9

    .line 1
    const-string v0, "No injector for class: "

    .line 2
    const-string v1, "AppComponentFactory"

    .line 4
    iget-object v2, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;->$contentProvider:Landroid/content/ContentProvider;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/SystemUIAppComponentFactoryBase$instantiateProviderCompat$1;->this$0:Lcom/android/systemui/SystemUIAppComponentFactoryBase;

    .line 8
    invoke-static {p0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase;->access$createSystemUIInitializerInternal(Lcom/android/systemui/SystemUIAppComponentFactoryBase;Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIInitializer;->getSysUIComponent()Lcom/android/systemui/dagger/SysUIComponent;

    .line 14
    move-result-object p1

    .line 17
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v3

    .line 21
    const-string v4, "inject"

    .line 22
    const/4 v5, 0x1

    .line 24
    new-array v6, v5, [Ljava/lang/Class;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    move-result-object v7

    .line 30
    const/4 v8, 0x0

    .line 31
    aput-object v7, v6, v8

    .line 32
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    move-result-object v3

    .line 37
    new-array v4, v5, [Ljava/lang/Object;

    .line 38
    aput-object v2, v4, v8

    .line 40
    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 45
    :catch_0
    move-exception p1

    .line 46
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    move-result-object v2

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    goto :goto_0

    .line 66
    :catch_1
    move-exception p1

    .line 67
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    move-result-object v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    goto :goto_0

    .line 87
    :catch_2
    move-exception p1

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    move-result-object v2

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object v0

    .line 104
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    :goto_0
    return-object p0
    .line 108
.end method
