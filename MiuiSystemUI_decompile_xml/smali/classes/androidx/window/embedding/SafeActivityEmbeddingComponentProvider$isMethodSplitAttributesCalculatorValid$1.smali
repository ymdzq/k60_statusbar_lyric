.class final Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitAttributesCalculatorValid$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;


# direct methods
.method public constructor <init>(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitAttributesCalculatorValid$1;->this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

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
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitAttributesCalculatorValid$1;->this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    .line 2
    invoke-static {v0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->access$getActivityEmbeddingComponentClass(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-class v1, Landroidx/window/extensions/core/util/function/Function;

    .line 8
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    const-string/jumbo v2, "setSplitAttributesCalculator"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v0

    .line 20
    iget-object p0, p0, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider$isMethodSplitAttributesCalculatorValid$1;->this$0:Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;

    .line 21
    invoke-static {p0}, Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;->access$getActivityEmbeddingComponentClass(Landroidx/window/embedding/SafeActivityEmbeddingComponentProvider;)Ljava/lang/Class;

    .line 23
    move-result-object p0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v2, v1, [Ljava/lang/Class;

    .line 28
    const-string v3, "clearSplitAttributesCalculator"

    .line 30
    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 36
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 40
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 46
    move-result p0

    .line 49
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    .line 50
    move-result p0

    .line 53
    if-eqz p0, :cond_0

    .line 54
    const/4 v1, 0x1

    .line 56
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    move-result-object p0

    .line 60
    return-object p0
    .line 61
.end method
