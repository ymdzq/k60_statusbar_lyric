.class public final enum Lmiuix/animation/ITouchStyle$TouchMode;
.super Ljava/lang/Enum;
.source "ITouchStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ITouchStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/animation/ITouchStyle$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/animation/ITouchStyle$TouchMode;

.field public static final enum NORMAL:Lmiuix/animation/ITouchStyle$TouchMode;

.field public static final enum ROUND_CORNERS:Lmiuix/animation/ITouchStyle$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lmiuix/animation/ITouchStyle$TouchMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/animation/ITouchStyle$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/animation/ITouchStyle$TouchMode;->NORMAL:Lmiuix/animation/ITouchStyle$TouchMode;

    new-instance v1, Lmiuix/animation/ITouchStyle$TouchMode;

    const-string v2, "ROUND_CORNERS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmiuix/animation/ITouchStyle$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiuix/animation/ITouchStyle$TouchMode;->ROUND_CORNERS:Lmiuix/animation/ITouchStyle$TouchMode;

    .line 22
    filled-new-array {v0, v1}, [Lmiuix/animation/ITouchStyle$TouchMode;

    move-result-object v0

    sput-object v0, Lmiuix/animation/ITouchStyle$TouchMode;->$VALUES:[Lmiuix/animation/ITouchStyle$TouchMode;

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

.method public static valueOf(Ljava/lang/String;)Lmiuix/animation/ITouchStyle$TouchMode;
    .locals 1

    .line 22
    const-class v0, Lmiuix/animation/ITouchStyle$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/animation/ITouchStyle$TouchMode;

    return-object p0
.end method

.method public static values()[Lmiuix/animation/ITouchStyle$TouchMode;
    .locals 1

    .line 22
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchMode;->$VALUES:[Lmiuix/animation/ITouchStyle$TouchMode;

    invoke-virtual {v0}, [Lmiuix/animation/ITouchStyle$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/animation/ITouchStyle$TouchMode;

    return-object v0
.end method
