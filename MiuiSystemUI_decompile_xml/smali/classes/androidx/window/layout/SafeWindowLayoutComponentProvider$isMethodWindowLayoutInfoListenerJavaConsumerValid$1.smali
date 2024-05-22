.class final Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerJavaConsumerValid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;


# direct methods
.method public constructor <init>(Landroidx/window/layout/SafeWindowLayoutComponentProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerJavaConsumerValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

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
    iget-object v0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerJavaConsumerValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 2
    iget-object v0, v0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->consumerAdapter:Landroidx/window/core/ConsumerAdapter;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    :try_start_0
    iget-object v0, v0, Landroidx/window/core/ConsumerAdapter;->loader:Ljava/lang/ClassLoader;

    .line 9
    const-string v1, "java.util.function.Consumer"

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-nez v0, :cond_0

    .line 19
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 21
    goto :goto_2

    .line 23
    :cond_0
    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider$isMethodWindowLayoutInfoListenerJavaConsumerValid$1;->this$0:Landroidx/window/layout/SafeWindowLayoutComponentProvider;

    .line 24
    iget-object p0, p0, Landroidx/window/layout/SafeWindowLayoutComponentProvider;->loader:Ljava/lang/ClassLoader;

    .line 26
    const-string v1, "androidx.window.extensions.layout.WindowLayoutComponent"

    .line 28
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 30
    move-result-object p0

    .line 33
    const-class v1, Landroid/app/Activity;

    .line 34
    filled-new-array {v1, v0}, [Ljava/lang/Class;

    .line 36
    move-result-object v1

    .line 39
    const-string v2, "addWindowLayoutInfoListener"

    .line 40
    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    move-result-object v1

    .line 45
    const-string/jumbo v2, "removeWindowLayoutInfoListener"

    .line 46
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {p0, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 53
    move-result-object p0

    .line 56
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 57
    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 61
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 67
    move-result p0

    .line 70
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 71
    move-result p0

    .line 74
    if-eqz p0, :cond_1

    .line 75
    const/4 p0, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    const/4 p0, 0x0

    .line 79
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 80
    move-result-object p0

    .line 83
    :goto_2
    return-object p0
    .line 84
.end method
