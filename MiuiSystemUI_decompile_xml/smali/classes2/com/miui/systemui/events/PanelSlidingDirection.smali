.class public final enum Lcom/miui/systemui/events/PanelSlidingDirection;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/systemui/events/PanelSlidingDirection;

.field public static final enum DOWN:Lcom/miui/systemui/events/PanelSlidingDirection;

.field public static final enum UP:Lcom/miui/systemui/events/PanelSlidingDirection;


# direct methods
.method private static final synthetic $values()[Lcom/miui/systemui/events/PanelSlidingDirection;
    .locals 2

    .line 1
    sget-object v0, Lcom/miui/systemui/events/PanelSlidingDirection;->UP:Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 2
    sget-object v1, Lcom/miui/systemui/events/PanelSlidingDirection;->DOWN:Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 4
    filled-new-array {v0, v1}, [Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 6
    move-result-object v0

    .line 9
    return-object v0
    .line 10
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 2
    const-string v1, "UP"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/PanelSlidingDirection;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/systemui/events/PanelSlidingDirection;->UP:Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 10
    new-instance v0, Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 12
    const-string v1, "DOWN"

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/PanelSlidingDirection;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/miui/systemui/events/PanelSlidingDirection;->DOWN:Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 20
    invoke-static {}, Lcom/miui/systemui/events/PanelSlidingDirection;->$values()[Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 22
    move-result-object v0

    .line 25
    sput-object v0, Lcom/miui/systemui/events/PanelSlidingDirection;->$VALUES:[Lcom/miui/systemui/events/PanelSlidingDirection;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/systemui/events/PanelSlidingDirection;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/systemui/events/PanelSlidingDirection;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/events/PanelSlidingDirection;->$VALUES:[Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/systemui/events/PanelSlidingDirection;

    .line 8
    return-object v0
    .line 10
.end method
