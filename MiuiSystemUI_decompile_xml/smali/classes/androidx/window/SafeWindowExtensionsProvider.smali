.class public final Landroidx/window/SafeWindowExtensionsProvider;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/SafeWindowExtensionsProvider;->loader:Ljava/lang/ClassLoader;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final isWindowExtensionsValid$window_release()Z
    .locals 3

    .line 1
    new-instance v0, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsPresent$1;

    .line 2
    invoke-direct {v0, p0}, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsPresent$1;-><init>(Landroidx/window/SafeWindowExtensionsProvider;)V

    .line 4
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v0}, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsPresent$1;->invoke()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    move v0, v2

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move v0, v1

    .line 14
    :goto_0
    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsValid$1;

    .line 17
    invoke-direct {v0, p0}, Landroidx/window/SafeWindowExtensionsProvider$isWindowExtensionsValid$1;-><init>(Landroidx/window/SafeWindowExtensionsProvider;)V

    .line 19
    const-string p0, "WindowExtensionsProvider#getWindowExtensions is not valid"

    .line 22
    invoke-static {p0, v0}, Landroidx/window/reflection/ReflectionUtils;->validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    move v1, v2

    .line 30
    :cond_0
    return v1
    .line 31
.end method
