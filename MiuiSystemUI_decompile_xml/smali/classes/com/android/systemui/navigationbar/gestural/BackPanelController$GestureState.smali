.class public final enum Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public static final enum ACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public static final enum CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public static final enum COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public static final enum ENTRY:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public static final enum FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public static final enum GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

.field public static final enum INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 2
    const-string v1, "GONE"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->GONE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 10
    new-instance v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 12
    const-string v2, "ENTRY"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ENTRY:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 20
    new-instance v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 22
    const-string v3, "ACTIVE"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->ACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 30
    new-instance v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 32
    const-string v4, "INACTIVE"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->INACTIVE:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 40
    new-instance v4, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 42
    const-string v5, "FLUNG"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->FLUNG:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 50
    new-instance v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 52
    const-string v6, "COMMITTED"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->COMMITTED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 60
    new-instance v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 62
    const-string v7, "CANCELLED"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->CANCELLED:Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 70
    filled-new-array/range {v0 .. v6}, [Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 72
    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->$VALUES:[Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 76
    return-void
    .line 78
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;->$VALUES:[Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/navigationbar/gestural/BackPanelController$GestureState;

    .line 8
    return-object v0
    .line 10
.end method
