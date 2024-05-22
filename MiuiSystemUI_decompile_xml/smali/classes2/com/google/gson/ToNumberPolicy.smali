.class public abstract enum Lcom/google/gson/ToNumberPolicy;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/gson/ToNumberStrategy;


# static fields
.field public static final synthetic $VALUES:[Lcom/google/gson/ToNumberPolicy;

.field public static final enum DOUBLE:Lcom/google/gson/ToNumberPolicy;

.field public static final enum LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/ToNumberPolicy$1;

    .line 2
    invoke-direct {v0}, Lcom/google/gson/ToNumberPolicy$1;-><init>()V

    .line 4
    sput-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 7
    new-instance v1, Lcom/google/gson/ToNumberPolicy$2;

    .line 9
    invoke-direct {v1}, Lcom/google/gson/ToNumberPolicy$2;-><init>()V

    .line 11
    sput-object v1, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy;

    .line 14
    new-instance v2, Lcom/google/gson/ToNumberPolicy$3;

    .line 16
    invoke-direct {v2}, Lcom/google/gson/ToNumberPolicy$3;-><init>()V

    .line 18
    new-instance v3, Lcom/google/gson/ToNumberPolicy$4;

    .line 21
    invoke-direct {v3}, Lcom/google/gson/ToNumberPolicy$4;-><init>()V

    .line 23
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/gson/ToNumberPolicy;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/ToNumberPolicy;
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/ToNumberPolicy;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/gson/ToNumberPolicy;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/google/gson/ToNumberPolicy;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    .line 2
    invoke-virtual {v0}, [Lcom/google/gson/ToNumberPolicy;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/gson/ToNumberPolicy;

    .line 8
    return-object v0
    .line 10
.end method
