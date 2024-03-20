.class final enum Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
.super Ljava/lang/Enum;
.source "DirectIndexedFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum BYTE:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum BYTE_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum INTEGER:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum INTEGER_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum LONG:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum LONG_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum SHORT:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum SHORT_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

.field public static final enum STRING:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 105
    new-instance v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v1, "BYTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 106
    new-instance v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v2, "SHORT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 107
    new-instance v2, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v3, "INTEGER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 108
    new-instance v3, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v4, "LONG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 109
    new-instance v4, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v5, "STRING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->STRING:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 110
    new-instance v5, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v6, "BYTE_ARRAY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->BYTE_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 111
    new-instance v6, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v7, "SHORT_ARRAY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->SHORT_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 112
    new-instance v7, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v8, "INTEGER_ARRAY"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->INTEGER_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 113
    new-instance v8, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    const-string v9, "LONG_ARRAY"

    const/16 v10, 0x8

    invoke-direct {v8, v9, v10}, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->LONG_ARRAY:Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    .line 104
    filled-new-array/range {v0 .. v8}, [Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    move-result-object v0

    sput-object v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->$VALUES:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
    .locals 1

    .line 104
    const-class v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object p0
.end method

.method public static values()[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;
    .locals 1

    .line 104
    sget-object v0, Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->$VALUES:[Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    invoke-virtual {v0}, [Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/core/util/DirectIndexedFile$DataItemDescriptor$Type;

    return-object v0
.end method
