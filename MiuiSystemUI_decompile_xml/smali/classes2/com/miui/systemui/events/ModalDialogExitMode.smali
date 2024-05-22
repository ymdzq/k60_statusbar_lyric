.class public final enum Lcom/miui/systemui/events/ModalDialogExitMode;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/systemui/events/ModalDialogExitMode;

.field public static final enum BUTTON:Lcom/miui/systemui/events/ModalDialogExitMode;


# direct methods
.method private static final synthetic $values()[Lcom/miui/systemui/events/ModalDialogExitMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/events/ModalDialogExitMode;->BUTTON:Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 2
    filled-new-array {v0}, [Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 4
    move-result-object v0

    .line 7
    return-object v0
    .line 8
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 2
    const-string v1, "BUTTON"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/systemui/events/ModalDialogExitMode;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/systemui/events/ModalDialogExitMode;->BUTTON:Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 10
    invoke-static {}, Lcom/miui/systemui/events/ModalDialogExitMode;->$values()[Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 12
    move-result-object v0

    .line 15
    sput-object v0, Lcom/miui/systemui/events/ModalDialogExitMode;->$VALUES:[Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 16
    return-void
    .line 18
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/systemui/events/ModalDialogExitMode;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/systemui/events/ModalDialogExitMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/systemui/events/ModalDialogExitMode;->$VALUES:[Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/systemui/events/ModalDialogExitMode;

    .line 8
    return-object v0
    .line 10
.end method
