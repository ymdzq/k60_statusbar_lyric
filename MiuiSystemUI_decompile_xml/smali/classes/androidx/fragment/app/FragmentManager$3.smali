.class public final Landroidx/fragment/app/FragmentManager$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sClassCacheMap:Landroidx/collection/SimpleArrayMap;


# instance fields
.field public final synthetic this$0:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 4
    sput-object v0, Landroidx/fragment/app/FragmentManager$3;->sClassCacheMap:Landroidx/collection/SimpleArrayMap;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$3;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method public static loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    .line 1
    sget-object v0, Landroidx/fragment/app/FragmentManager$3;->sClassCacheMap:Landroidx/collection/SimpleArrayMap;

    .line 2
    invoke-virtual {v0, p0}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Landroidx/collection/SimpleArrayMap;

    .line 8
    if-nez v1, :cond_0

    .line 10
    new-instance v1, Landroidx/collection/SimpleArrayMap;

    .line 12
    invoke-direct {v1}, Landroidx/collection/SimpleArrayMap;-><init>()V

    .line 14
    invoke-virtual {v0, p0, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_0
    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/Class;

    .line 24
    if-nez v0, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 28
    invoke-static {p1, v0, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {v1, p1, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_1
    return-object v0
    .line 36
.end method

.method public static loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    .line 1
    const-string v0, "Unable to instantiate fragment "

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentManager$3;->loadClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v1, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 10
    const-string v2, ": make sure class is a valid subclass of Fragment"

    .line 12
    invoke-static {v0, p1, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 17
    invoke-direct {v1, p0, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 18
    throw v1

    .line 21
    :catch_1
    move-exception p0

    .line 22
    new-instance v1, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 23
    const-string v2, ": make sure class name exists"

    .line 25
    invoke-static {v0, p1, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    invoke-direct {v1, p0, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 31
    throw v1
    .line 34
.end method


# virtual methods
.method public final instantiate(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$3;->this$0:Landroidx/fragment/app/FragmentManager;

    .line 2
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager;->mHost:Landroidx/fragment/app/FragmentActivity$HostCallbacks;

    .line 4
    iget-object p0, p0, Landroidx/fragment/app/FragmentActivity$HostCallbacks;->mContext:Landroid/content/Context;

    .line 6
    sget-object v0, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    .line 8
    const-string v0, ": make sure class name exists, is public, and has an empty constructor that is public"

    .line 10
    const-string v1, "Unable to instantiate fragment "

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 14
    move-result-object p0

    .line 17
    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentManager$3;->loadFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 18
    move-result-object p0

    .line 21
    const/4 v2, 0x0

    .line 22
    new-array v3, v2, [Ljava/lang/Class;

    .line 23
    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 25
    move-result-object p0

    .line 28
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 34
    check-cast p0, Landroidx/fragment/app/Fragment;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-object p0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance v0, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 39
    const-string v2, ": calling Fragment constructor caused an exception"

    .line 41
    invoke-static {v1, p1, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 46
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 47
    throw v0

    .line 50
    :catch_1
    move-exception p0

    .line 51
    new-instance v0, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 52
    const-string v2, ": could not find Fragment constructor"

    .line 54
    invoke-static {v1, p1, v2}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    move-result-object p1

    .line 59
    invoke-direct {v0, p0, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 60
    throw v0

    .line 63
    :catch_2
    move-exception p0

    .line 64
    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 65
    invoke-static {v1, p1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 70
    invoke-direct {v2, p0, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 71
    throw v2

    .line 74
    :catch_3
    move-exception p0

    .line 75
    new-instance v2, Landroidx/fragment/app/Fragment$InstantiationException;

    .line 76
    invoke-static {v1, p1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 81
    invoke-direct {v2, p0, p1}, Landroidx/fragment/app/Fragment$InstantiationException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 82
    throw v2
    .line 85
.end method
