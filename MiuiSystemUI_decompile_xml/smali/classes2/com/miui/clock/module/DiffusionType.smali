.class public final enum Lcom/miui/clock/module/DiffusionType;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/miui/clock/module/DiffusionType;

.field public static final enum BOTH:Lcom/miui/clock/module/DiffusionType;

.field public static final enum LEFT:Lcom/miui/clock/module/DiffusionType;

.field public static final enum NONE:Lcom/miui/clock/module/DiffusionType;

.field public static final enum RIGHT:Lcom/miui/clock/module/DiffusionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/miui/clock/module/DiffusionType;

    .line 2
    const-string v1, "LEFT"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/clock/module/DiffusionType;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/miui/clock/module/DiffusionType;->LEFT:Lcom/miui/clock/module/DiffusionType;

    .line 10
    new-instance v1, Lcom/miui/clock/module/DiffusionType;

    .line 12
    const-string v2, "RIGHT"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/miui/clock/module/DiffusionType;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/miui/clock/module/DiffusionType;->RIGHT:Lcom/miui/clock/module/DiffusionType;

    .line 20
    new-instance v2, Lcom/miui/clock/module/DiffusionType;

    .line 22
    const-string v3, "BOTH"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/miui/clock/module/DiffusionType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/miui/clock/module/DiffusionType;->BOTH:Lcom/miui/clock/module/DiffusionType;

    .line 30
    new-instance v3, Lcom/miui/clock/module/DiffusionType;

    .line 32
    const-string v4, "NONE"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/miui/clock/module/DiffusionType;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/miui/clock/module/DiffusionType;->NONE:Lcom/miui/clock/module/DiffusionType;

    .line 40
    filled-new-array {v0, v1, v2, v3}, [Lcom/miui/clock/module/DiffusionType;

    .line 42
    move-result-object v0

    .line 45
    sput-object v0, Lcom/miui/clock/module/DiffusionType;->$VALUES:[Lcom/miui/clock/module/DiffusionType;

    .line 46
    return-void
    .line 48
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/clock/module/DiffusionType;
    .locals 1

    .line 1
    const-class v0, Lcom/miui/clock/module/DiffusionType;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/clock/module/DiffusionType;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/miui/clock/module/DiffusionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/clock/module/DiffusionType;->$VALUES:[Lcom/miui/clock/module/DiffusionType;

    .line 2
    invoke-virtual {v0}, [Lcom/miui/clock/module/DiffusionType;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/miui/clock/module/DiffusionType;

    .line 8
    return-object v0
    .line 10
.end method
