.class public final enum Lcom/miui/systemui/events/EventModuleTarget;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/systemui/events/EventModuleTarget;

.field public static final enum MINIWINDOW:Lcom/miui/systemui/events/EventModuleTarget;

.field public static final enum NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;

.field public static final enum NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;

.field public static final enum ONEHANDED:Lcom/miui/systemui/events/EventModuleTarget;

.field public static final enum SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;


# instance fields
.field private final module:I


# direct methods
.method private static final synthetic $values()[Lcom/miui/systemui/events/EventModuleTarget;
    .locals 5

    .line 1
    sget-object v0, Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;

    .line 2
    sget-object v1, Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;

    .line 4
    sget-object v2, Lcom/miui/systemui/events/EventModuleTarget;->MINIWINDOW:Lcom/miui/systemui/events/EventModuleTarget;

    .line 6
    sget-object v3, Lcom/miui/systemui/events/EventModuleTarget;->ONEHANDED:Lcom/miui/systemui/events/EventModuleTarget;

    .line 8
    sget-object v4, Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;

    .line 10
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/miui/systemui/events/EventModuleTarget;

    .line 12
    move-result-object v0

    .line 15
    return-object v0
    .line 16
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/systemui/events/EventModuleTarget;

    .line 2
    const-string v1, "SYSTEMUI"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/miui/systemui/events/EventModuleTarget;-><init>(Ljava/lang/String;II)V

    .line 7
    sput-object v0, Lcom/miui/systemui/events/EventModuleTarget;->SYSTEMUI:Lcom/miui/systemui/events/EventModuleTarget;

    .line 10
    new-instance v0, Lcom/miui/systemui/events/EventModuleTarget;

    .line 12
    const-string v1, "NOTIFICATION"

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2, v2}, Lcom/miui/systemui/events/EventModuleTarget;-><init>(Ljava/lang/String;II)V

    .line 17
    sput-object v0, Lcom/miui/systemui/events/EventModuleTarget;->NOTIFICATION:Lcom/miui/systemui/events/EventModuleTarget;

    .line 20
    new-instance v0, Lcom/miui/systemui/events/EventModuleTarget;

    .line 22
    const-string v1, "MINIWINDOW"

    .line 24
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2, v2}, Lcom/miui/systemui/events/EventModuleTarget;-><init>(Ljava/lang/String;II)V

    .line 27
    sput-object v0, Lcom/miui/systemui/events/EventModuleTarget;->MINIWINDOW:Lcom/miui/systemui/events/EventModuleTarget;

    .line 30
    new-instance v0, Lcom/miui/systemui/events/EventModuleTarget;

    .line 32
    const-string v1, "ONEHANDED"

    .line 34
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2, v2}, Lcom/miui/systemui/events/EventModuleTarget;-><init>(Ljava/lang/String;II)V

    .line 37
    sput-object v0, Lcom/miui/systemui/events/EventModuleTarget;->ONEHANDED:Lcom/miui/systemui/events/EventModuleTarget;

    .line 40
    new-instance v0, Lcom/miui/systemui/events/EventModuleTarget;

    .line 42
    const-string v1, "NEWNOTIF"

    .line 44
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2, v2}, Lcom/miui/systemui/events/EventModuleTarget;-><init>(Ljava/lang/String;II)V

    .line 47
    sput-object v0, Lcom/miui/systemui/events/EventModuleTarget;->NEWNOTIF:Lcom/miui/systemui/events/EventModuleTarget;

    .line 50
    invoke-static {}, Lcom/miui/systemui/events/EventModuleTarget;->$values()[Lcom/miui/systemui/events/EventModuleTarget;

    .line 52
    move-result-object v0

    .line 55
    sput-object v0, Lcom/miui/systemui/events/EventModuleTarget;->$VALUES:[Lcom/miui/systemui/events/EventModuleTarget;

    .line 56
    return-void
    .line 58
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/miui/systemui/events/EventModuleTarget;->module:I

    .line 5
    return-void
    .line 7
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/systemui/events/EventModuleTarget;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/events/EventModuleTarget;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/systemui/events/EventModuleTarget;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/systemui/events/EventModuleTarget;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/events/EventModuleTarget;->$VALUES:[Lcom/miui/systemui/events/EventModuleTarget;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/systemui/events/EventModuleTarget;

    .line 8
    return-object v0
    .line 10
.end method


# virtual methods
.method public final getModule()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/systemui/events/EventModuleTarget;->module:I

    .line 2
    return p0
    .line 4
.end method
