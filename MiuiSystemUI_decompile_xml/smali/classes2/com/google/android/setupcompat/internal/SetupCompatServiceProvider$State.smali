.class final enum Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 2
    const-string v1, "NOT_STARTED"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 10
    new-instance v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 12
    const-string v2, "BIND_FAILED"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 20
    new-instance v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 22
    const-string v3, "BINDING"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 30
    new-instance v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 32
    const-string v4, "CONNECTED"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 40
    new-instance v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 42
    const-string v5, "DISCONNECTED"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 50
    new-instance v5, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 52
    const-string v6, "SERVICE_NOT_USABLE"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 60
    new-instance v6, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 62
    const-string v7, "REBIND_REQUIRED"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 70
    filled-new-array/range {v0 .. v6}, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 72
    move-result-object v0

    .line 75
    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->$VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->$VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 2
    invoke-virtual {v0}, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    .line 8
    return-object v0
    .line 10
.end method
