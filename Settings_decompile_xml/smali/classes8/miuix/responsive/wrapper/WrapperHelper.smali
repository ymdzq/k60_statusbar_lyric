.class public Lmiuix/responsive/wrapper/WrapperHelper;
.super Ljava/lang/Object;
.source "WrapperHelper.java"


# direct methods
.method public static setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    instance-of v1, v0, Lmiuix/responsive/wrapper/Factory2Wrapper;

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    check-cast p0, Lmiuix/responsive/wrapper/Factory2Wrapper;

    invoke-virtual {p0, p1}, Lmiuix/responsive/wrapper/Factory2Wrapper;->setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_1

    .line 18
    :cond_2
    instance-of v1, p1, Lmiuix/responsive/wrapper/Factory2Wrapper;

    if-eqz v1, :cond_3

    .line 19
    move-object v1, p1

    check-cast v1, Lmiuix/responsive/wrapper/Factory2Wrapper;

    invoke-virtual {v1, v0}, Lmiuix/responsive/wrapper/Factory2Wrapper;->setOriginFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 21
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mFactory2"

    invoke-static {v0, v1}, Lmiuix/reflect/Reflects;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lmiuix/reflect/Reflects;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
