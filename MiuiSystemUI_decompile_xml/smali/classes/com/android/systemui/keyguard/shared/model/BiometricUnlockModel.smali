.class public final enum Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum DISMISS_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum NONE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum ONLY_WAKE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum SHOW_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum UNLOCK_COLLAPSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum WAKE_AND_UNLOCK_FROM_DREAM:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final enum WAKE_AND_UNLOCK_PULSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

.field public static final wakeAndUnlockModes:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 2
    const-string v1, "NONE"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->NONE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 10
    new-instance v8, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 12
    const-string v1, "WAKE_AND_UNLOCK"

    .line 14
    const/4 v2, 0x1

    .line 16
    invoke-direct {v8, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v8, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 20
    new-instance v9, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 22
    const-string v1, "WAKE_AND_UNLOCK_PULSING"

    .line 24
    const/4 v2, 0x2

    .line 26
    invoke-direct {v9, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v9, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK_PULSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 30
    new-instance v3, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 32
    const-string v1, "SHOW_BOUNCER"

    .line 34
    const/4 v2, 0x3

    .line 36
    invoke-direct {v3, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->SHOW_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 40
    new-instance v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 42
    const-string v1, "ONLY_WAKE"

    .line 44
    const/4 v2, 0x4

    .line 46
    invoke-direct {v4, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->ONLY_WAKE:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 50
    new-instance v5, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 52
    const-string v1, "UNLOCK_COLLAPSING"

    .line 54
    const/4 v2, 0x5

    .line 56
    invoke-direct {v5, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->UNLOCK_COLLAPSING:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 60
    new-instance v6, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 62
    const-string v1, "DISMISS_BOUNCER"

    .line 64
    const/4 v2, 0x6

    .line 66
    invoke-direct {v6, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->DISMISS_BOUNCER:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 70
    new-instance v10, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 72
    const-string v1, "WAKE_AND_UNLOCK_FROM_DREAM"

    .line 74
    const/4 v2, 0x7

    .line 76
    invoke-direct {v10, v1, v2}, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v10, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK_FROM_DREAM:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 80
    move-object v1, v8

    .line 82
    move-object v2, v9

    .line 83
    move-object v7, v10

    .line 84
    filled-new-array/range {v0 .. v7}, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 85
    move-result-object v0

    .line 88
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 89
    filled-new-array {v8, v10, v9}, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 91
    move-result-object v0

    .line 94
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 95
    move-result-object v0

    .line 98
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->wakeAndUnlockModes:Ljava/util/Set;

    .line 99
    return-void
    .line 101
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 8
    return-object v0
    .line 10
.end method
