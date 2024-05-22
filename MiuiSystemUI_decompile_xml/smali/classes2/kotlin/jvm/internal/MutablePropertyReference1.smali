.class public abstract Lkotlin/jvm/internal/MutablePropertyReference1;
.super Lkotlin/jvm/internal/MutablePropertyReference;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/reflect/KMutableProperty1;


# virtual methods
.method public final computeReflected()Lkotlin/reflect/KCallable;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-object p0
    .line 7
.end method

.method public final getGetter()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lkotlin/reflect/KCallable;

    .line 2
    move-result-object v0

    .line 5
    if-eq v0, p0, :cond_0

    .line 6
    check-cast v0, Lkotlin/reflect/KProperty;

    .line 8
    check-cast v0, Lkotlin/reflect/KMutableProperty1;

    .line 10
    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference1;

    .line 12
    invoke-virtual {v0}, Lkotlin/jvm/internal/MutablePropertyReference1;->getGetter()V

    .line 14
    return-void

    .line 17
    :cond_0
    new-instance p0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    .line 18
    invoke-direct {p0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    .line 20
    throw p0
    .line 23
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p0, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/MutablePropertyReference1;->getGetter()V

    .line 4
    const/4 p0, 0x0

    .line 7
    throw p0
    .line 8
.end method
