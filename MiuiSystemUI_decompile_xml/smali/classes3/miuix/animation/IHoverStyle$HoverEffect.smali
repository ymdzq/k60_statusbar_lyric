.class public final enum Lmiuix/animation/IHoverStyle$HoverEffect;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lmiuix/animation/IHoverStyle$HoverEffect;

.field public static final enum FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

.field public static final enum FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

.field public static final enum NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 2
    const-string v1, "NORMAL"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lmiuix/animation/IHoverStyle$HoverEffect;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->NORMAL:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 10
    new-instance v1, Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 12
    const-string v2, "FLOATED"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lmiuix/animation/IHoverStyle$HoverEffect;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 20
    new-instance v2, Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 22
    const-string v3, "FLOATED_WRAPPED"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lmiuix/animation/IHoverStyle$HoverEffect;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lmiuix/animation/IHoverStyle$HoverEffect;->FLOATED_WRAPPED:Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 30
    filled-new-array {v0, v1, v2}, [Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->$VALUES:[Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 36
    return-void
    .line 38
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/animation/IHoverStyle$HoverEffect;
    .locals 1

    .line 1
    const-class v0, Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lmiuix/animation/IHoverStyle$HoverEffect;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/animation/IHoverStyle$HoverEffect;->$VALUES:[Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 2
    invoke-virtual {v0}, [Lmiuix/animation/IHoverStyle$HoverEffect;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lmiuix/animation/IHoverStyle$HoverEffect;

    .line 8
    return-object v0
    .line 10
.end method
