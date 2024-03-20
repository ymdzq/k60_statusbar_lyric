.class final Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerWindowConsumerValid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;


# direct methods
.method public constructor <init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerWindowConsumerValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerWindowConsumerValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 2
    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    .line 4
    const-string v0, "androidx.window.extensions.layout.WindowLayoutComponent"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object p0

    .line 11
    const-class v0, Landroid/content/Context;

    .line 12
    const-class v1, Landroidx/window/extensions/core/util/function/Consumer;

    .line 14
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    .line 16
    move-result-object v0

    .line 19
    const-string v2, "addWindowLayoutInfoListener"

    .line 20
    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v0

    .line 25
    const-string/jumbo v2, "removeWindowLayoutInfoListener"

    .line 26
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 37
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 41
    move-result v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 47
    move-result p0

    .line 50
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 51
    move-result p0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    const/4 p0, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const/4 p0, 0x0

    .line 59
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    move-result-object p0

    .line 63
    return-object p0
    .line 64
.end method
