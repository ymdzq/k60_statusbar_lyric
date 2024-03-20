.class final Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# static fields
.field public static final INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;

    .line 2
    invoke-direct {v0}, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;-><init>()V

    .line 4
    sput-object v0, Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;->INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion$extensionBackend$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    :try_start_0
    const-class v0, Landroidx/window/layout/WindowInfoTracker;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 5
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    new-instance v1, Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 11
    new-instance v2, Landroidx/window/core/ConsumerAdapter;

    .line 13
    invoke-direct {v2, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    .line 15
    invoke-direct {v1, v0, v2}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;-><init>(Ljava/lang/ClassLoader;Landroidx/window/core/ConsumerAdapter;)V

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    move-object v1, p0

    .line 22
    :goto_0
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v1}, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    .line 25
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    new-instance v2, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;

    .line 31
    new-instance v3, Landroidx/window/core/ConsumerAdapter;

    .line 33
    invoke-direct {v3, v0}, Landroidx/window/core/ConsumerAdapter;-><init>(Ljava/lang/ClassLoader;)V

    .line 35
    invoke-direct {v2, v1, v3}, Landroidx/window/layout/adapter/extensions/ExtensionWindowLayoutInfoBackend;-><init>(Landroidx/window/extensions/layout/WindowLayoutComponent;Landroidx/window/core/ConsumerAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    move-object p0, v2

    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    sget-object v0, Landroidx/window/layout/WindowInfoTracker$Companion;->$$INSTANCE:Landroidx/window/layout/WindowInfoTracker$Companion;

    .line 43
    :cond_1
    :goto_1
    return-object p0
    .line 45
.end method
