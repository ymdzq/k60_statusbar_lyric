.class public abstract Landroidx/window/reflection/ReflectionUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final validateReflection$window_release(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Z
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    const-string v1, "ReflectionGuard"

    .line 4
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Boolean;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_2

    .line 16
    if-eqz p0, :cond_2

    .line 18
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 23
    :catch_0
    if-nez p0, :cond_0

    .line 24
    move-object p0, v0

    .line 26
    :cond_0
    const-string p1, "NoSuchMethod: "

    .line 27
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    goto :goto_0

    .line 36
    :catch_1
    if-nez p0, :cond_1

    .line 37
    move-object p0, v0

    .line 39
    :cond_1
    const-string p1, "ClassNotFound: "

    .line 40
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :goto_0
    const/4 p1, 0x0

    .line 49
    :cond_2
    :goto_1
    return p1
    .line 50
.end method
