.class public final Lcom/android/systemui/controls/management/AllModel$OrderedMap;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/Map;
.implements Lkotlin/jvm/internal/markers/KMutableMap;


# instance fields
.field public final map:Ljava/util/Map;

.field public final orderedKeys:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->orderedKeys:Ljava/util/List;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->orderedKeys:Ljava/util/List;

    .line 2
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 9
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 11
    return-void
    .line 14
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final keySet()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->orderedKeys:Ljava/util/List;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 17
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    return-void
    .line 7
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->orderedKeys:Ljava/util/List;

    .line 10
    check-cast p0, Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-object v0
    .line 17
.end method

.method public final size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final values()Ljava/util/Collection;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/AllModel$OrderedMap;->map:Ljava/util/Map;

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method
