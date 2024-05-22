.class public abstract Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final sClassContainer:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->sClassContainer:Ljava/util/Map;

    .line 7
    return-void
    .line 9
.end method

.method public static getImpl(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->sClassContainer:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public static registerImpl(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/interfacesmanager/InterfacesImplManager;->sClassContainer:Ljava/util/Map;

    .line 2
    check-cast v0, Ljava/util/HashMap;

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    return-void
    .line 12
.end method
