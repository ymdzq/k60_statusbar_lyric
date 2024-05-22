.class public abstract Lmiuix/internal/util/AttributeResolver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TYPED_VALUE:Landroid/util/TypedValue;

.field public static final TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    sput-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 7
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 9
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 11
    sput-object v0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 14
    return-void
    .line 16
.end method

.method public static getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    move-result-object v0

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    sget-object p0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE:Landroid/util/TypedValue;

    .line 16
    return-object p0

    .line 18
    :cond_0
    sget-object p0, Lmiuix/internal/util/AttributeResolver;->TYPED_VALUE_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 19
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Landroid/util/TypedValue;

    .line 25
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Landroid/util/TypedValue;

    .line 29
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 34
    :cond_1
    return-object v0
    .line 37
.end method

.method public static resolve(ILandroid/content/Context;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, -0x1

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public static resolveBoolean(IZLandroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    move-result-object p2

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p2, p0, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 17
    const/16 p1, 0x12

    .line 19
    if-ne p0, p1, :cond_0

    .line 21
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 23
    if-eqz p0, :cond_0

    .line 25
    move p1, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    move p1, p0

    .line 30
    :cond_1
    :goto_0
    return p1
    .line 31
.end method

.method public static resolveDimensionPixelSize(ILandroid/content/Context;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p0, p1}, Lmiuix/internal/util/AttributeResolver;->resolve(ILandroid/content/Context;)I

    .line 6
    move-result p0

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public static resolveDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    invoke-static {p1}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_1

    .line 15
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 17
    if-lez p0, :cond_0

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p0

    .line 24
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 27
    move-result-object p1

    .line 30
    invoke-virtual {p0, v0, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 36
    const/16 p1, 0x1c

    .line 38
    if-lt p0, p1, :cond_1

    .line 40
    const/16 p1, 0x1f

    .line 42
    if-gt p0, p1, :cond_1

    .line 44
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    .line 46
    iget p1, v0, Landroid/util/TypedValue;->data:I

    .line 48
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 50
    return-object p0

    .line 53
    :cond_1
    const/4 p0, 0x0

    .line 54
    return-object p0
    .line 55
.end method

.method public static resolveInt(Landroid/content/Context;II)I
    .locals 2

    .line 1
    invoke-static {p0}, Lmiuix/internal/util/AttributeResolver;->getTypedValue(Landroid/content/Context;)Landroid/util/TypedValue;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 6
    move-result-object p0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 11
    move-result p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    iget p0, v0, Landroid/util/TypedValue;->type:I

    .line 17
    const/16 p1, 0x10

    .line 19
    if-lt p0, p1, :cond_0

    .line 21
    const/16 p1, 0x1f

    .line 23
    if-gt p0, p1, :cond_0

    .line 25
    iget p2, v0, Landroid/util/TypedValue;->data:I

    .line 27
    :cond_0
    return p2
    .line 29
.end method

.method public static resolveTypedValue(ILandroid/content/Context;)Landroid/util/TypedValue;
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    .line 2
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 7
    move-result-object p1

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {p1, p0, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    return-object v0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return-object p0
    .line 20
.end method
