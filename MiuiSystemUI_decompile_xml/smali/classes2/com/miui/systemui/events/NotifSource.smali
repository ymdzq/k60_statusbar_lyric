.class public final enum Lcom/miui/systemui/events/NotifSource;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/systemui/events/NotifSource;

.field public static final enum FLOAT:Lcom/miui/systemui/events/NotifSource;

.field public static final enum KEYGUARD:Lcom/miui/systemui/events/NotifSource;

.field public static final enum PANEL:Lcom/miui/systemui/events/NotifSource;

.field public static final enum SETTINGS:Lcom/miui/systemui/events/NotifSource;

.field public static final enum SHADE_LOCKED:Lcom/miui/systemui/events/NotifSource;

.field public static final enum UNIMPORTANT:Lcom/miui/systemui/events/NotifSource;


# direct methods
.method private static final synthetic $values()[Lcom/miui/systemui/events/NotifSource;
    .locals 6

    .line 1
    sget-object v0, Lcom/miui/systemui/events/NotifSource;->KEYGUARD:Lcom/miui/systemui/events/NotifSource;

    .line 2
    sget-object v1, Lcom/miui/systemui/events/NotifSource;->PANEL:Lcom/miui/systemui/events/NotifSource;

    .line 4
    sget-object v2, Lcom/miui/systemui/events/NotifSource;->FLOAT:Lcom/miui/systemui/events/NotifSource;

    .line 6
    sget-object v3, Lcom/miui/systemui/events/NotifSource;->SETTINGS:Lcom/miui/systemui/events/NotifSource;

    .line 8
    sget-object v4, Lcom/miui/systemui/events/NotifSource;->UNIMPORTANT:Lcom/miui/systemui/events/NotifSource;

    .line 10
    sget-object v5, Lcom/miui/systemui/events/NotifSource;->SHADE_LOCKED:Lcom/miui/systemui/events/NotifSource;

    .line 12
    filled-new-array/range {v0 .. v5}, [Lcom/miui/systemui/events/NotifSource;

    .line 14
    move-result-object v0

    .line 17
    return-object v0
    .line 18
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/systemui/events/NotifSource;

    .line 2
    const-string v1, "KEYGUARD"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/NotifSource;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/systemui/events/NotifSource;->KEYGUARD:Lcom/miui/systemui/events/NotifSource;

    .line 10
    new-instance v0, Lcom/miui/systemui/events/NotifSource;

    .line 12
    const-string v1, "PANEL"

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/NotifSource;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/miui/systemui/events/NotifSource;->PANEL:Lcom/miui/systemui/events/NotifSource;

    .line 20
    new-instance v0, Lcom/miui/systemui/events/NotifSource;

    .line 22
    const-string v1, "FLOAT"

    .line 24
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/NotifSource;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/miui/systemui/events/NotifSource;->FLOAT:Lcom/miui/systemui/events/NotifSource;

    .line 30
    new-instance v0, Lcom/miui/systemui/events/NotifSource;

    .line 32
    const-string v1, "SETTINGS"

    .line 34
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/NotifSource;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v0, Lcom/miui/systemui/events/NotifSource;->SETTINGS:Lcom/miui/systemui/events/NotifSource;

    .line 40
    new-instance v0, Lcom/miui/systemui/events/NotifSource;

    .line 42
    const-string v1, "UNIMPORTANT"

    .line 44
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/NotifSource;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v0, Lcom/miui/systemui/events/NotifSource;->UNIMPORTANT:Lcom/miui/systemui/events/NotifSource;

    .line 50
    new-instance v0, Lcom/miui/systemui/events/NotifSource;

    .line 52
    const-string v1, "SHADE_LOCKED"

    .line 54
    const/4 v2, 0x5

    .line 56
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/NotifSource;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v0, Lcom/miui/systemui/events/NotifSource;->SHADE_LOCKED:Lcom/miui/systemui/events/NotifSource;

    .line 60
    invoke-static {}, Lcom/miui/systemui/events/NotifSource;->$values()[Lcom/miui/systemui/events/NotifSource;

    .line 62
    move-result-object v0

    .line 65
    sput-object v0, Lcom/miui/systemui/events/NotifSource;->$VALUES:[Lcom/miui/systemui/events/NotifSource;

    .line 66
    return-void
    .line 68
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/systemui/events/NotifSource;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/events/NotifSource;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/systemui/events/NotifSource;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/systemui/events/NotifSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/events/NotifSource;->$VALUES:[Lcom/miui/systemui/events/NotifSource;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/systemui/events/NotifSource;

    .line 8
    return-object v0
    .line 10
.end method
