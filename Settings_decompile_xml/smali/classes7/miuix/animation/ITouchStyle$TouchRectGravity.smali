.class public final enum Lmiuix/animation/ITouchStyle$TouchRectGravity;
.super Ljava/lang/Enum;
.source "ITouchStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/ITouchStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchRectGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmiuix/animation/ITouchStyle$TouchRectGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field public static final enum CENTER_IN_PARENT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field public static final enum CENTER_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field public static final enum TOP_CENTER:Lmiuix/animation/ITouchStyle$TouchRectGravity;

.field public static final enum TOP_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lmiuix/animation/ITouchStyle$TouchRectGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;->TOP_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    new-instance v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    const-string v2, "TOP_CENTER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lmiuix/animation/ITouchStyle$TouchRectGravity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmiuix/animation/ITouchStyle$TouchRectGravity;->TOP_CENTER:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    new-instance v2, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    const-string v3, "CENTER_LEFT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lmiuix/animation/ITouchStyle$TouchRectGravity;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_LEFT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    new-instance v3, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    const-string v4, "CENTER_IN_PARENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lmiuix/animation/ITouchStyle$TouchRectGravity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lmiuix/animation/ITouchStyle$TouchRectGravity;->CENTER_IN_PARENT:Lmiuix/animation/ITouchStyle$TouchRectGravity;

    .line 26
    filled-new-array {v0, v1, v2, v3}, [Lmiuix/animation/ITouchStyle$TouchRectGravity;

    move-result-object v0

    sput-object v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;->$VALUES:[Lmiuix/animation/ITouchStyle$TouchRectGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiuix/animation/ITouchStyle$TouchRectGravity;
    .locals 1

    .line 26
    const-class v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmiuix/animation/ITouchStyle$TouchRectGravity;

    return-object p0
.end method

.method public static values()[Lmiuix/animation/ITouchStyle$TouchRectGravity;
    .locals 1

    .line 26
    sget-object v0, Lmiuix/animation/ITouchStyle$TouchRectGravity;->$VALUES:[Lmiuix/animation/ITouchStyle$TouchRectGravity;

    invoke-virtual {v0}, [Lmiuix/animation/ITouchStyle$TouchRectGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiuix/animation/ITouchStyle$TouchRectGravity;

    return-object v0
.end method
