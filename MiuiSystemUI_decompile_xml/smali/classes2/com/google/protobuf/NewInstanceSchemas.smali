.class public abstract Lcom/google/protobuf/NewInstanceSchemas;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final FULL_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

.field public static final LITE_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Class;

    .line 9
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 11
    move-result-object v0

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/google/protobuf/NewInstanceSchemaLite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 23
    :catch_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    sput-object v0, Lcom/google/protobuf/NewInstanceSchemas;->FULL_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 25
    new-instance v0, Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 27
    invoke-direct {v0}, Lcom/google/protobuf/NewInstanceSchemaLite;-><init>()V

    .line 29
    sput-object v0, Lcom/google/protobuf/NewInstanceSchemas;->LITE_SCHEMA:Lcom/google/protobuf/NewInstanceSchemaLite;

    .line 32
    return-void
    .line 34
.end method
