.class public abstract Lcom/android/systemui/SystemUIInitializerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static initializer:Lcom/android/systemui/SystemUIInitializer;


# direct methods
.method public static final createFromConfigNoAssert(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/systemui/SystemUIInitializerFactory;->initializer:Lcom/android/systemui/SystemUIInitializer;

    .line 2
    if-nez v0, :cond_2

    .line 4
    const v0, 0x7f1302e3    # @string/config_systemUIFactoryComponent 'com.android.systemui.SystemUIInitializerImpl'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 19
    move v1, v2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    :goto_0
    if-nez v1, :cond_1

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    move-result-object v1

    .line 33
    new-array v2, v2, [Ljava/lang/Class;

    .line 34
    const-class v4, Landroid/content/Context;

    .line 36
    aput-object v4, v2, v3

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 40
    move-result-object v1

    .line 43
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    check-cast p0, Lcom/android/systemui/SystemUIInitializer;

    .line 52
    sput-object p0, Lcom/android/systemui/SystemUIInitializerFactory;->initializer:Lcom/android/systemui/SystemUIInitializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    move-object v0, p0

    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    const-string v1, "Error creating SystemUIInitializer component: "

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    const-string v1, "SysUIInitializerFactory"

    .line 65
    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    throw p0

    .line 70
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 71
    const-string v0, "No SystemUIFactory component configured"

    .line 73
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 75
    throw p0

    .line 78
    :cond_2
    :goto_1
    return-object v0
    .line 79
.end method
