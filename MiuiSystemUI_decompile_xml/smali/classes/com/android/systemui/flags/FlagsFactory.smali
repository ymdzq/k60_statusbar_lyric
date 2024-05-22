.class public final Lcom/android/systemui/flags/FlagsFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/flags/FlagsFactory;

.field public static final flagMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/flags/FlagsFactory;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/flags/FlagsFactory;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/flags/FlagsFactory;->INSTANCE:Lcom/android/systemui/flags/FlagsFactory;

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    sput-object v0, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 14
    return-void
    .line 16
.end method

.method public static releasedFlag$default(ILjava/lang/String;)Lcom/android/systemui/flags/ReleasedFlag;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    const-string/jumbo v1, "systemui"

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/flags/ReleasedFlag;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    sget-object p0, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 10
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-object v0
    .line 15
.end method

.method public static resourceBooleanFlag$default(IILjava/lang/String;)Lcom/android/systemui/flags/ResourceBooleanFlag;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    const-string/jumbo v1, "systemui"

    .line 4
    invoke-direct {v0, p0, p2, v1, p1}, Lcom/android/systemui/flags/ResourceBooleanFlag;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 7
    sget-object p0, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 10
    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-object v0
    .line 15
.end method

.method public static sysPropBooleanFlag$default(ILjava/lang/String;Z)Lcom/android/systemui/flags/SysPropBooleanFlag;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/flags/SysPropBooleanFlag;

    .line 2
    const-string/jumbo v1, "systemui"

    .line 4
    invoke-direct {v0, p1, p0, v1, p2}, Lcom/android/systemui/flags/SysPropBooleanFlag;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 7
    sget-object p0, Lcom/android/systemui/flags/FlagsFactory;->flagMap:Ljava/util/Map;

    .line 10
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-object v0
    .line 15
.end method

.method public static unreleasedFlag$default(IZI)Lcom/android/systemui/flags/UnreleasedFlag;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/flags/UnreleasedFlag;

    .line 2
    invoke-direct {p1, p0}, Lcom/android/systemui/flags/UnreleasedFlag;-><init>(I)V

    .line 4
    return-object p1
    .line 7
.end method
