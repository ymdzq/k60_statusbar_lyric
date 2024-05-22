.class public final enum Lcom/miui/systemui/events/ModalExitMode;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/systemui/events/ModalExitMode;

.field public static final enum AGGREGATE_FEEDBACK:Lcom/miui/systemui/events/ModalExitMode;

.field public static final enum DISABLE:Lcom/miui/systemui/events/ModalExitMode;

.field public static final enum DOWNPULL:Lcom/miui/systemui/events/ModalExitMode;

.field public static final enum FOCUS:Lcom/miui/systemui/events/ModalExitMode;

.field public static final enum FOLD:Lcom/miui/systemui/events/ModalExitMode;

.field public static final enum MANUAL:Lcom/miui/systemui/events/ModalExitMode;

.field public static final enum MORE:Lcom/miui/systemui/events/ModalExitMode;

.field public static final enum OTHER:Lcom/miui/systemui/events/ModalExitMode;


# direct methods
.method private static final synthetic $values()[Lcom/miui/systemui/events/ModalExitMode;
    .locals 8

    .line 1
    sget-object v0, Lcom/miui/systemui/events/ModalExitMode;->MANUAL:Lcom/miui/systemui/events/ModalExitMode;

    .line 2
    sget-object v1, Lcom/miui/systemui/events/ModalExitMode;->FOLD:Lcom/miui/systemui/events/ModalExitMode;

    .line 4
    sget-object v2, Lcom/miui/systemui/events/ModalExitMode;->FOCUS:Lcom/miui/systemui/events/ModalExitMode;

    .line 6
    sget-object v3, Lcom/miui/systemui/events/ModalExitMode;->AGGREGATE_FEEDBACK:Lcom/miui/systemui/events/ModalExitMode;

    .line 8
    sget-object v4, Lcom/miui/systemui/events/ModalExitMode;->MORE:Lcom/miui/systemui/events/ModalExitMode;

    .line 10
    sget-object v5, Lcom/miui/systemui/events/ModalExitMode;->DOWNPULL:Lcom/miui/systemui/events/ModalExitMode;

    .line 12
    sget-object v6, Lcom/miui/systemui/events/ModalExitMode;->DISABLE:Lcom/miui/systemui/events/ModalExitMode;

    .line 14
    sget-object v7, Lcom/miui/systemui/events/ModalExitMode;->OTHER:Lcom/miui/systemui/events/ModalExitMode;

    .line 16
    filled-new-array/range {v0 .. v7}, [Lcom/miui/systemui/events/ModalExitMode;

    .line 18
    move-result-object v0

    .line 21
    return-object v0
    .line 22
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 2
    const-string v1, "MANUAL"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalExitMode;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->MANUAL:Lcom/miui/systemui/events/ModalExitMode;

    .line 10
    new-instance v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 12
    const-string v1, "FOLD"

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalExitMode;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->FOLD:Lcom/miui/systemui/events/ModalExitMode;

    .line 20
    new-instance v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 22
    const-string v1, "FOCUS"

    .line 24
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalExitMode;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->FOCUS:Lcom/miui/systemui/events/ModalExitMode;

    .line 30
    new-instance v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 32
    const-string v1, "AGGREGATE_FEEDBACK"

    .line 34
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalExitMode;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->AGGREGATE_FEEDBACK:Lcom/miui/systemui/events/ModalExitMode;

    .line 40
    new-instance v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 42
    const-string v1, "MORE"

    .line 44
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalExitMode;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->MORE:Lcom/miui/systemui/events/ModalExitMode;

    .line 50
    new-instance v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 52
    const-string v1, "DOWNPULL"

    .line 54
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalExitMode;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->DOWNPULL:Lcom/miui/systemui/events/ModalExitMode;

    .line 60
    new-instance v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 62
    const-string v1, "DISABLE"

    .line 64
    const/4 v2, 0x6

    .line 66
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalExitMode;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->DISABLE:Lcom/miui/systemui/events/ModalExitMode;

    .line 70
    new-instance v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 72
    const-string v1, "OTHER"

    .line 74
    const/4 v2, 0x7

    .line 76
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalExitMode;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->OTHER:Lcom/miui/systemui/events/ModalExitMode;

    .line 80
    invoke-static {}, Lcom/miui/systemui/events/ModalExitMode;->$values()[Lcom/miui/systemui/events/ModalExitMode;

    .line 82
    move-result-object v0

    .line 85
    sput-object v0, Lcom/miui/systemui/events/ModalExitMode;->$VALUES:[Lcom/miui/systemui/events/ModalExitMode;

    .line 86
    return-void
    .line 88
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/systemui/events/ModalExitMode;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/events/ModalExitMode;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/systemui/events/ModalExitMode;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/systemui/events/ModalExitMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/events/ModalExitMode;->$VALUES:[Lcom/miui/systemui/events/ModalExitMode;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/systemui/events/ModalExitMode;

    .line 8
    return-object v0
    .line 10
.end method
