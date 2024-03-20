.class public final Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/InjectionInflationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/InjectionInflationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 23
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v0, v0, Lcom/android/systemui/util/InjectionInflationController;->mViewCreatorFactory:Lcom/android/systemui/util/InjectionInflationController$ViewCreator$Factory;

    invoke-interface {v0, p2, p3}, Lcom/android/systemui/util/InjectionInflationController$ViewCreator$Factory;->build(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/android/systemui/util/InjectionInflationController$ViewCreator;

    move-result-object p2

    .line 2
    iget-object p3, p0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    .line 3
    iget-boolean v0, p3, Lcom/android/systemui/util/InjectionInflationController;->hasInitInjectionMap:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p3, Lcom/android/systemui/util/InjectionInflationController;->hasInitInjectionMap:Z

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 6
    const-class v6, Landroid/view/View;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    and-int/2addr v6, v0

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 8
    iget-object v7, p3, Lcom/android/systemui/util/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 9
    invoke-virtual {v7, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController;->mInjectionMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_3

    :try_start_0
    new-array p3, v1, [Ljava/lang/Object;

    .line 11
    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 12
    new-instance p2, Landroid/view/InflateException;

    const-string p3, "Could not inflate "

    .line 13
    invoke-static {p3, p1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p2, p1, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
