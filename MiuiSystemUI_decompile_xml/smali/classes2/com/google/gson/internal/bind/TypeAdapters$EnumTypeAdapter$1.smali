.class public final Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic val$classOfT:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->val$classOfT:Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$EnumTypeAdapter$1;->val$classOfT:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 4
    move-result-object p0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    array-length v1, p0

    .line 10
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    array-length v1, p0

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    aget-object v4, p0, v3

    .line 19
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    .line 21
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    new-array p0, v2, [Ljava/lang/reflect/Field;

    .line 33
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    check-cast p0, [Ljava/lang/reflect/Field;

    .line 39
    const/4 v0, 0x1

    .line 41
    invoke-static {p0, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 42
    return-object p0
    .line 45
.end method
