.class public final enum Lcom/android/systemui/plugins/ClockTickRate;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/plugins/ClockTickRate;

.field public static final enum PER_FRAME:Lcom/android/systemui/plugins/ClockTickRate;

.field public static final enum PER_MINUTE:Lcom/android/systemui/plugins/ClockTickRate;

.field public static final enum PER_SECOND:Lcom/android/systemui/plugins/ClockTickRate;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/android/systemui/plugins/ClockTickRate;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/plugins/ClockTickRate;->PER_MINUTE:Lcom/android/systemui/plugins/ClockTickRate;

    .line 2
    sget-object v1, Lcom/android/systemui/plugins/ClockTickRate;->PER_SECOND:Lcom/android/systemui/plugins/ClockTickRate;

    .line 4
    sget-object v2, Lcom/android/systemui/plugins/ClockTickRate;->PER_FRAME:Lcom/android/systemui/plugins/ClockTickRate;

    .line 6
    filled-new-array {v0, v1, v2}, [Lcom/android/systemui/plugins/ClockTickRate;

    .line 8
    move-result-object v0

    .line 11
    return-object v0
    .line 12
.end method

.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 2
    const-string v1, "PER_MINUTE"

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x2

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/plugins/ClockTickRate;-><init>(Ljava/lang/String;II)V

    .line 8
    sput-object v0, Lcom/android/systemui/plugins/ClockTickRate;->PER_MINUTE:Lcom/android/systemui/plugins/ClockTickRate;

    .line 11
    new-instance v0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 13
    const-string v1, "PER_SECOND"

    .line 15
    const/4 v4, 0x1

    .line 17
    invoke-direct {v0, v1, v4, v4}, Lcom/android/systemui/plugins/ClockTickRate;-><init>(Ljava/lang/String;II)V

    .line 18
    sput-object v0, Lcom/android/systemui/plugins/ClockTickRate;->PER_SECOND:Lcom/android/systemui/plugins/ClockTickRate;

    .line 21
    new-instance v0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 23
    const-string v1, "PER_FRAME"

    .line 25
    invoke-direct {v0, v1, v3, v2}, Lcom/android/systemui/plugins/ClockTickRate;-><init>(Ljava/lang/String;II)V

    .line 27
    sput-object v0, Lcom/android/systemui/plugins/ClockTickRate;->PER_FRAME:Lcom/android/systemui/plugins/ClockTickRate;

    .line 30
    invoke-static {}, Lcom/android/systemui/plugins/ClockTickRate;->$values()[Lcom/android/systemui/plugins/ClockTickRate;

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Lcom/android/systemui/plugins/ClockTickRate;->$VALUES:[Lcom/android/systemui/plugins/ClockTickRate;

    .line 36
    return-void
    .line 38
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/android/systemui/plugins/ClockTickRate;->value:I

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/plugins/ClockTickRate;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/plugins/ClockTickRate;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/plugins/ClockTickRate;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/plugins/ClockTickRate;->$VALUES:[Lcom/android/systemui/plugins/ClockTickRate;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/plugins/ClockTickRate;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/ClockTickRate;->value:I

    .line 2
    return p0
    .line 4
.end method
