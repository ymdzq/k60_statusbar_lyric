.class public final enum Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

.field public static final enum OVAL:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

.field public static final enum ROUNDED_RECT:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 2
    const-string v1, "OVAL"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;->OVAL:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 10
    new-instance v1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 12
    const-string v2, "ROUNDED_RECT"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;->ROUNDED_RECT:Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 20
    filled-new-array {v0, v1}, [Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 22
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;->$VALUES:[Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 26
    return-void
    .line 28
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;->$VALUES:[Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/statusbar/phone/MiuiKeyButtonRipple$Type;

    .line 8
    return-object v0
    .line 10
.end method
