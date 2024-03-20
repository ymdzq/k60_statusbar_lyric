.class final enum Lcom/google/protobuf/FieldType$Collection;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/protobuf/FieldType$Collection;

.field public static final enum MAP:Lcom/google/protobuf/FieldType$Collection;

.field public static final enum PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

.field public static final enum SCALAR:Lcom/google/protobuf/FieldType$Collection;

.field public static final enum VECTOR:Lcom/google/protobuf/FieldType$Collection;


# instance fields
.field private final isList:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/protobuf/FieldType$Collection;

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "SCALAR"

    .line 5
    invoke-direct {v0, v1, v1, v2}, Lcom/google/protobuf/FieldType$Collection;-><init>(ZILjava/lang/String;)V

    .line 7
    sput-object v0, Lcom/google/protobuf/FieldType$Collection;->SCALAR:Lcom/google/protobuf/FieldType$Collection;

    .line 10
    new-instance v2, Lcom/google/protobuf/FieldType$Collection;

    .line 12
    const/4 v3, 0x1

    .line 14
    const-string v4, "VECTOR"

    .line 15
    invoke-direct {v2, v3, v3, v4}, Lcom/google/protobuf/FieldType$Collection;-><init>(ZILjava/lang/String;)V

    .line 17
    sput-object v2, Lcom/google/protobuf/FieldType$Collection;->VECTOR:Lcom/google/protobuf/FieldType$Collection;

    .line 20
    new-instance v4, Lcom/google/protobuf/FieldType$Collection;

    .line 22
    const-string v5, "PACKED_VECTOR"

    .line 24
    const/4 v6, 0x2

    .line 26
    invoke-direct {v4, v3, v6, v5}, Lcom/google/protobuf/FieldType$Collection;-><init>(ZILjava/lang/String;)V

    .line 27
    sput-object v4, Lcom/google/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/google/protobuf/FieldType$Collection;

    .line 30
    new-instance v3, Lcom/google/protobuf/FieldType$Collection;

    .line 32
    const-string v5, "MAP"

    .line 34
    const/4 v6, 0x3

    .line 36
    invoke-direct {v3, v1, v6, v5}, Lcom/google/protobuf/FieldType$Collection;-><init>(ZILjava/lang/String;)V

    .line 37
    sput-object v3, Lcom/google/protobuf/FieldType$Collection;->MAP:Lcom/google/protobuf/FieldType$Collection;

    .line 40
    filled-new-array {v0, v2, v4, v3}, [Lcom/google/protobuf/FieldType$Collection;

    .line 42
    move-result-object v0

    .line 45
    sput-object v0, Lcom/google/protobuf/FieldType$Collection;->$VALUES:[Lcom/google/protobuf/FieldType$Collection;

    .line 46
    return-void
    .line 48
.end method

.method public constructor <init>(ZILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/FieldType$Collection;->isList:Z

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/FieldType$Collection;
    .locals 1

    .line 1
    const-class v0, Lcom/google/protobuf/FieldType$Collection;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/protobuf/FieldType$Collection;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/google/protobuf/FieldType$Collection;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/FieldType$Collection;->$VALUES:[Lcom/google/protobuf/FieldType$Collection;

    .line 2
    invoke-virtual {v0}, [Lcom/google/protobuf/FieldType$Collection;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/protobuf/FieldType$Collection;

    .line 8
    return-object v0
    .line 10
.end method
