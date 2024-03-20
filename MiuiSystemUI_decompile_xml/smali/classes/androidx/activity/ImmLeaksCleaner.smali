.class final Landroidx/activity/ImmLeaksCleaner;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static sHField:Ljava/lang/reflect/Field;

.field public static sNextServedViewField:Ljava/lang/reflect/Field;

.field public static sReflectedFieldsInitialized:I

.field public static sServedViewField:Ljava/lang/reflect/Field;


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 1
    sget-object p0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    .line 2
    if-eq p2, p0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    sget p0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    .line 7
    const/4 p1, 0x1

    .line 9
    if-nez p0, :cond_1

    .line 10
    const/4 p0, 0x2

    .line 12
    :try_start_0
    sput p0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    .line 13
    const-class p0, Landroid/view/inputmethod/InputMethodManager;

    .line 15
    const-string p2, "mServedView"

    .line 17
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 19
    move-result-object p0

    .line 22
    sput-object p0, Landroidx/activity/ImmLeaksCleaner;->sServedViewField:Ljava/lang/reflect/Field;

    .line 23
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    const-class p0, Landroid/view/inputmethod/InputMethodManager;

    .line 28
    const-string p2, "mNextServedView"

    .line 30
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 32
    move-result-object p0

    .line 35
    sput-object p0, Landroidx/activity/ImmLeaksCleaner;->sNextServedViewField:Ljava/lang/reflect/Field;

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    const-class p0, Landroid/view/inputmethod/InputMethodManager;

    .line 41
    const-string p2, "mH"

    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 45
    move-result-object p0

    .line 48
    sput-object p0, Landroidx/activity/ImmLeaksCleaner;->sHField:Ljava/lang/reflect/Field;

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 51
    sput p1, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    :cond_1
    sget p0, Landroidx/activity/ImmLeaksCleaner;->sReflectedFieldsInitialized:I

    .line 56
    if-eq p0, p1, :cond_2

    .line 58
    return-void

    .line 60
    :cond_2
    const/4 p0, 0x0

    .line 61
    throw p0
    .line 62
.end method
