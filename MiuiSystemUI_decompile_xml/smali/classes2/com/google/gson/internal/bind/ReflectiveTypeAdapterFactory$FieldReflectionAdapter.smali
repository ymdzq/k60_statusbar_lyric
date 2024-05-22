.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;
.super Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final constructor:Lcom/google/gson/internal/ObjectConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Ljava/util/Map;)V

    .line 2
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final createAccumulator()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$FieldReflectionAdapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;

    .line 2
    invoke-interface {p0}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final finalize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    return-object p1
    .line 2
.end method

.method public final readField(Ljava/lang/Object;Lcom/google/gson/stream/JsonReader;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
    .locals 1

    .line 1
    iget-object p0, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$typeAdapter:Lcom/google/gson/TypeAdapter;

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    iget-boolean p2, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    .line 10
    if-nez p2, :cond_2

    .line 12
    :cond_0
    iget-boolean p2, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$blockInaccessible:Z

    .line 14
    iget-object v0, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    .line 16
    if-eqz p2, :cond_1

    .line 18
    invoke-static {p1, v0}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->-$$Nest$smcheckAccessible(Ljava/lang/Object;Ljava/lang/reflect/AccessibleObject;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_1
    iget-boolean p2, p3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isStaticFinalField:Z

    .line 24
    if-nez p2, :cond_3

    .line 26
    :goto_0
    invoke-virtual {v0, p1, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    :cond_2
    return-void

    .line 31
    :cond_3
    const/4 p0, 0x0

    .line 32
    invoke-static {v0, p0}, Lcom/google/gson/internal/reflect/ReflectionHelper;->getAccessibleObjectDescription(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    new-instance p1, Lcom/google/gson/JsonIOException;

    .line 37
    const-string p2, "Cannot set value of \'static final\' "

    .line 39
    invoke-static {p2, p0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 44
    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p1
    .line 48
.end method
