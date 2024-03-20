.class public final enum Lmiuix/animation/IHoverStyle$HoverType;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lmiuix/animation/IHoverStyle$HoverType;

.field public static final enum ENTER:Lmiuix/animation/IHoverStyle$HoverType;

.field public static final enum EXIT:Lmiuix/animation/IHoverStyle$HoverType;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmiuix/animation/IHoverStyle$HoverType;

    .line 2
    const-string v1, "ENTER"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lmiuix/animation/IHoverStyle$HoverType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lmiuix/animation/IHoverStyle$HoverType;->ENTER:Lmiuix/animation/IHoverStyle$HoverType;

    .line 10
    new-instance v1, Lmiuix/animation/IHoverStyle$HoverType;

    .line 12
    const-string v2, "EXIT"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lmiuix/animation/IHoverStyle$HoverType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lmiuix/animation/IHoverStyle$HoverType;->EXIT:Lmiuix/animation/IHoverStyle$HoverType;

    .line 20
    filled-new-array {v0, v1}, [Lmiuix/animation/IHoverStyle$HoverType;

    .line 22
    move-result-object v0

    .line 25
    sput-object v0, Lmiuix/animation/IHoverStyle$HoverType;->$VALUES:[Lmiuix/animation/IHoverStyle$HoverType;

    .line 26
    return-void
    .line 28
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/animation/IHoverStyle$HoverType;
    .locals 1

    .line 1
    const-class v0, Lmiuix/animation/IHoverStyle$HoverType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/IHoverStyle$HoverType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lmiuix/animation/IHoverStyle$HoverType;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverType;->$VALUES:[Lmiuix/animation/IHoverStyle$HoverType;

    .line 2
    invoke-virtual {v0}, [Lmiuix/animation/IHoverStyle$HoverType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lmiuix/animation/IHoverStyle$HoverType;

    .line 8
    return-object v0
    .line 10
.end method
