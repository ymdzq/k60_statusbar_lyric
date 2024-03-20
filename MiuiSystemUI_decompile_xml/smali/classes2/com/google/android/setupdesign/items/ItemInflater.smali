.class public final Lcom/google/android/setupdesign/items/ItemInflater;
.super Lcom/google/android/setupdesign/items/SimpleInflater;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

.field public static final constructorMap:Ljava/util/HashMap;


# instance fields
.field public final context:Landroid/content/Context;

.field public defaultPackage:Ljava/lang/String;

.field public final tempConstructorArgs:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    const-class v1, Landroid/util/AttributeSet;

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/setupdesign/items/ItemInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    sput-object v0, Lcom/google/android/setupdesign/items/ItemInflater;->constructorMap:Ljava/util/HashMap;

    .line 17
    return-void
    .line 19
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/setupdesign/items/SimpleInflater;-><init>(Landroid/content/res/Resources;)V

    .line 6
    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/google/android/setupdesign/items/ItemInflater;->tempConstructorArgs:[Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemInflater;->context:Landroid/content/Context;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-class v0, Lcom/google/android/setupdesign/items/Item;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "."

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/google/android/setupdesign/items/ItemInflater;->defaultPackage:Ljava/lang/String;

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public final onCreateItem(Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/setupdesign/items/ItemInflater;->defaultPackage:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lcom/google/android/setupdesign/items/ItemInflater;->tempConstructorArgs:[Ljava/lang/Object;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/16 v2, 0x2e

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    .line 10
    move-result v2

    .line 13
    const/4 v3, -0x1

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, p1

    .line 22
    :goto_0
    sget-object v2, Lcom/google/android/setupdesign/items/ItemInflater;->constructorMap:Ljava/util/HashMap;

    .line 23
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/reflect/Constructor;

    .line 29
    iget-object p0, p0, Lcom/google/android/setupdesign/items/ItemInflater;->context:Landroid/content/Context;

    .line 31
    const/4 v4, 0x1

    .line 33
    if-nez v3, :cond_1

    .line 34
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 36
    move-result-object v3

    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    move-result-object v3

    .line 43
    sget-object v5, Lcom/google/android/setupdesign/items/ItemInflater;->CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 44
    invoke-virtual {v3, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 46
    move-result-object v3

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 50
    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 56
    aput-object p0, v1, p1

    .line 57
    aput-object p2, v1, v4

    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    move-result-object p0

    .line 64
    const/4 v2, 0x0

    .line 65
    aput-object v2, v1, p1

    .line 66
    aput-object v2, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object p0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Landroid/view/InflateException;

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 82
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string p2, ": Error inflating class "

    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object p2

    .line 97
    invoke-direct {p1, p2, p0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    throw p1
    .line 101
.end method
