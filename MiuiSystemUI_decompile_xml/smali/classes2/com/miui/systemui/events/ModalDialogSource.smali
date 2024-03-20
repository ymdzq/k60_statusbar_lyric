.class public final enum Lcom/miui/systemui/events/ModalDialogSource;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/systemui/events/ModalDialogSource;

.field public static final enum DISABLE:Lcom/miui/systemui/events/ModalDialogSource;

.field public static final enum FOCUS:Lcom/miui/systemui/events/ModalDialogSource;

.field public static final enum FOLD:Lcom/miui/systemui/events/ModalDialogSource;


# direct methods
.method private static final synthetic $values()[Lcom/miui/systemui/events/ModalDialogSource;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/systemui/events/ModalDialogSource;->DISABLE:Lcom/miui/systemui/events/ModalDialogSource;

    .line 2
    sget-object v1, Lcom/miui/systemui/events/ModalDialogSource;->FOLD:Lcom/miui/systemui/events/ModalDialogSource;

    .line 4
    sget-object v2, Lcom/miui/systemui/events/ModalDialogSource;->FOCUS:Lcom/miui/systemui/events/ModalDialogSource;

    .line 6
    filled-new-array {v0, v1, v2}, [Lcom/miui/systemui/events/ModalDialogSource;

    .line 8
    move-result-object v0

    .line 11
    return-object v0
    .line 12
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/systemui/events/ModalDialogSource;

    .line 2
    const-string v1, "DISABLE"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalDialogSource;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/systemui/events/ModalDialogSource;->DISABLE:Lcom/miui/systemui/events/ModalDialogSource;

    .line 10
    new-instance v0, Lcom/miui/systemui/events/ModalDialogSource;

    .line 12
    const-string v1, "FOLD"

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalDialogSource;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v0, Lcom/miui/systemui/events/ModalDialogSource;->FOLD:Lcom/miui/systemui/events/ModalDialogSource;

    .line 20
    new-instance v0, Lcom/miui/systemui/events/ModalDialogSource;

    .line 22
    const-string v1, "FOCUS"

    .line 24
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalDialogSource;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/miui/systemui/events/ModalDialogSource;->FOCUS:Lcom/miui/systemui/events/ModalDialogSource;

    .line 30
    invoke-static {}, Lcom/miui/systemui/events/ModalDialogSource;->$values()[Lcom/miui/systemui/events/ModalDialogSource;

    .line 32
    move-result-object v0

    .line 35
    sput-object v0, Lcom/miui/systemui/events/ModalDialogSource;->$VALUES:[Lcom/miui/systemui/events/ModalDialogSource;

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

.method public static valueOf(Ljava/lang/String;)Lcom/miui/systemui/events/ModalDialogSource;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/events/ModalDialogSource;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/systemui/events/ModalDialogSource;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/systemui/events/ModalDialogSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/events/ModalDialogSource;->$VALUES:[Lcom/miui/systemui/events/ModalDialogSource;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/systemui/events/ModalDialogSource;

    .line 8
    return-object v0
    .line 10
.end method
