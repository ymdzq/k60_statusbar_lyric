.class public final enum Lmiuix/animation/ITouchStyle$TouchRectGravity;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field public static final enum CENTER_IN_PARENT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field public static final enum CENTER_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field public static final enum TOP_CENTER:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field public static final enum TOP_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 2
    const-string v1, "TOP_LEFT"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lmiuix/animation/ITouchStyle$TouchRectGravity;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;->TOP_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 10
    new-instance v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 12
    const-string v2, "TOP_CENTER"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lmiuix/animation/ITouchStyle$TouchRectGravity;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->TOP_CENTER:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 20
    new-instance v2, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 22
    const-string v3, "CENTER_LEFT"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lmiuix/animation/ITouchStyle$TouchRectGravity;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 30
    new-instance v3, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 32
    const-string v4, "CENTER_IN_PARENT"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lmiuix/animation/ITouchStyle$TouchRectGravity;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_IN_PARENT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 40
    filled-new-array {v0, v1, v2, v3}, [Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 42
    move-result-object v0

    .line 45
    sput-object v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;->$VALUES:[Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 46
    return-void
    .line 48
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/animation/ITouchStyle$TouchRectGravity;
    .locals 1

    .line 1
    const-class v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lmiuix/animation/ITouchStyle$TouchRectGravity;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;->$VALUES:[Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 2
    invoke-virtual {v0}, [Lmiuix/animation/ITouchStyle$TouchRectGravity;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 8
    return-object v0
    .line 10
.end method
