.class final enum Lcom/miui/maml/data/BaseFunctions$Fun;
.super Ljava/lang/Enum;
.source "BaseFunctions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/data/BaseFunctions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Fun"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/maml/data/BaseFunctions$Fun;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum AND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum COS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum GE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum GT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum INT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum INVALID:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum LT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NE:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum OR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum POW:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

.field public static final enum TAN:Lcom/miui/maml/data/BaseFunctions$Fun;


# direct methods
.method static constructor <clinit>()V
    .locals 43

    .line 23
    new-instance v1, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v0, v1

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/maml/data/BaseFunctions$Fun;->INVALID:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 24
    new-instance v2, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v1, v2

    const-string v3, "RAND"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/miui/maml/data/BaseFunctions$Fun;->RAND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 25
    new-instance v3, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v2, v3

    const-string v4, "SIN"

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/maml/data/BaseFunctions$Fun;->SIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 26
    new-instance v4, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v3, v4

    const-string v5, "COS"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/miui/maml/data/BaseFunctions$Fun;->COS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 27
    new-instance v5, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v4, v5

    const-string v6, "TAN"

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/maml/data/BaseFunctions$Fun;->TAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 28
    new-instance v6, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v5, v6

    const-string v7, "ASIN"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/miui/maml/data/BaseFunctions$Fun;->ASIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 29
    new-instance v7, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v6, v7

    const-string v8, "ACOS"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/maml/data/BaseFunctions$Fun;->ACOS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 30
    new-instance v8, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v7, v8

    const-string v9, "ATAN"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/miui/maml/data/BaseFunctions$Fun;->ATAN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 31
    new-instance v9, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v8, v9

    const-string v10, "SINH"

    const/16 v11, 0x8

    invoke-direct {v9, v10, v11}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/maml/data/BaseFunctions$Fun;->SINH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 32
    new-instance v10, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v9, v10

    const-string v11, "COSH"

    const/16 v12, 0x9

    invoke-direct {v10, v11, v12}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/miui/maml/data/BaseFunctions$Fun;->COSH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 33
    new-instance v11, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v10, v11

    const-string v12, "SQRT"

    const/16 v13, 0xa

    invoke-direct {v11, v12, v13}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/maml/data/BaseFunctions$Fun;->SQRT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 34
    new-instance v12, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v11, v12

    const-string v13, "ABS"

    const/16 v14, 0xb

    invoke-direct {v12, v13, v14}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/miui/maml/data/BaseFunctions$Fun;->ABS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 35
    new-instance v13, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v12, v13

    const-string v14, "LEN"

    const/16 v15, 0xc

    invoke-direct {v13, v14, v15}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/miui/maml/data/BaseFunctions$Fun;->LEN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 36
    new-instance v14, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v13, v14

    const-string v15, "EVAL"

    move-object/from16 v40, v0

    const/16 v0, 0xd

    invoke-direct {v14, v15, v0}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/miui/maml/data/BaseFunctions$Fun;->EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 37
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v14, v0

    const-string v15, "PRECISE_EVAL"

    move-object/from16 v41, v1

    const/16 v1, 0xe

    invoke-direct {v0, v15, v1}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->PRECISE_EVAL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 38
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object v15, v0

    const-string v1, "ROUND"

    move-object/from16 v42, v2

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->ROUND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 39
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v16, v0

    const-string v1, "INT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->INT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 40
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v17, v0

    const-string v1, "NUM"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->NUM:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 41
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v18, v0

    const-string v1, "MIN"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->MIN:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 42
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v19, v0

    const-string v1, "MAX"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->MAX:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 43
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v20, v0

    const-string v1, "POW"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->POW:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 44
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v21, v0

    const-string v1, "LOG"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 45
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v22, v0

    const-string v1, "LOG10"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->LOG10:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 46
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v23, v0

    const-string v1, "DIGIT"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->DIGIT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 48
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v24, v0

    const-string v1, "EQ"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->EQ:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 49
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v25, v0

    const-string v1, "NE"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->NE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 50
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v26, v0

    const-string v1, "GE"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->GE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 51
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v27, v0

    const-string v1, "GT"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->GT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 52
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v28, v0

    const-string v1, "LE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->LE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 53
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v29, v0

    const-string v1, "LT"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->LT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 54
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v30, v0

    const-string v1, "ISNULL"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->ISNULL:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 55
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v31, v0

    const-string v1, "NOT"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->NOT:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 57
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v32, v0

    const-string v1, "IFELSE"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->IFELSE:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 60
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v33, v0

    const-string v1, "AND"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->AND:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 61
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v34, v0

    const-string v1, "OR"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->OR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 64
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v35, v0

    const-string v1, "EQS"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->EQS:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 65
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v36, v0

    const-string v1, "SUBSTR"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->SUBSTR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 68
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v37, v0

    const-string v1, "HASH"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->HASH:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 70
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v38, v0

    const-string v1, "FLOOR"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->FLOOR:Lcom/miui/maml/data/BaseFunctions$Fun;

    .line 71
    new-instance v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v39, v0

    const-string v1, "CEIL"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/BaseFunctions$Fun;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->CEIL:Lcom/miui/maml/data/BaseFunctions$Fun;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    .line 22
    filled-new-array/range {v0 .. v39}, [Lcom/miui/maml/data/BaseFunctions$Fun;

    move-result-object v0

    sput-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/maml/data/BaseFunctions$Fun;
    .locals 1

    .line 22
    const-class v0, Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/maml/data/BaseFunctions$Fun;

    return-object p0
.end method

.method public static values()[Lcom/miui/maml/data/BaseFunctions$Fun;
    .locals 1

    .line 22
    sget-object v0, Lcom/miui/maml/data/BaseFunctions$Fun;->$VALUES:[Lcom/miui/maml/data/BaseFunctions$Fun;

    invoke-virtual {v0}, [Lcom/miui/maml/data/BaseFunctions$Fun;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/maml/data/BaseFunctions$Fun;

    return-object v0
.end method
