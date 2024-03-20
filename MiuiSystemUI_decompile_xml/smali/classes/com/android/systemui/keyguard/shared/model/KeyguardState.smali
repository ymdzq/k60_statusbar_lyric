.class public final enum Lcom/android/systemui/keyguard/shared/model/KeyguardState;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum OFF:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public static final enum PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 2
    const-string v1, "OFF"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OFF:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 10
    new-instance v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 12
    const-string v2, "DOZING"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 20
    new-instance v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 22
    const-string v3, "DREAMING"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 30
    new-instance v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 32
    const-string v4, "AOD"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 40
    new-instance v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 42
    const-string v5, "ALTERNATE_BOUNCER"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->ALTERNATE_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 50
    new-instance v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 52
    const-string v6, "PRIMARY_BOUNCER"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 60
    new-instance v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 62
    const-string v7, "LOCKSCREEN"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 70
    new-instance v7, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 72
    const-string v8, "GONE"

    .line 74
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v7, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 80
    new-instance v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 82
    const-string v9, "OCCLUDED"

    .line 84
    const/16 v10, 0x8

    .line 86
    invoke-direct {v8, v9, v10}, Lcom/android/systemui/keyguard/shared/model/KeyguardState;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v8, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 91
    filled-new-array/range {v0 .. v8}, [Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 93
    move-result-object v0

    .line 96
    sput-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 97
    return-void
    .line 99
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/keyguard/shared/model/KeyguardState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/systemui/keyguard/shared/model/KeyguardState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->$VALUES:[Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 8
    return-object v0
    .line 10
.end method
