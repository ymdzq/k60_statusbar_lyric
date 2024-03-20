.class public final enum Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;
.super Ljava/lang/Enum;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

.field public static final enum EDITOR_READY_IN_IDEL:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

.field public static final enum EDITOR_READY_TIMEOUT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

.field public static final enum INIT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

.field public static final enum REQUEST_EXIT_IN_START:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

.field public static final enum SERVICE_CONNECT_TIMEOUT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

.field public static final enum SERVICE_DISCONNECT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

.field public static final enum TOP_ACTIVITY_CHANGE:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

.field public static final enum UNLOCKED_EXIT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 2
    const-string v1, "INIT"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->INIT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 10
    new-instance v1, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 12
    const-string v2, "SERVICE_CONNECT_TIMEOUT"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->SERVICE_CONNECT_TIMEOUT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 20
    new-instance v2, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 22
    const-string v3, "SERVICE_DISCONNECT"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->SERVICE_DISCONNECT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 30
    new-instance v3, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 32
    const-string v4, "EDITOR_READY_TIMEOUT"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->EDITOR_READY_TIMEOUT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 40
    new-instance v4, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 42
    const-string v5, "UNLOCKED_EXIT"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->UNLOCKED_EXIT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 50
    new-instance v5, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 52
    const-string v6, "EDITOR_READY_IN_IDEL"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->EDITOR_READY_IN_IDEL:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 60
    new-instance v6, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 62
    const-string v7, "REQUEST_EXIT_IN_START"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->REQUEST_EXIT_IN_START:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 70
    new-instance v7, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 72
    const-string v8, "TOP_ACTIVITY_CHANGE"

    .line 74
    const/4 v9, 0x7

    .line 76
    invoke-direct {v7, v8, v9}, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v7, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->TOP_ACTIVITY_CHANGE:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 80
    filled-new-array/range {v0 .. v7}, [Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 82
    move-result-object v0

    .line 85
    sput-object v0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->$VALUES:[Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 86
    return-void
    .line 88
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->$VALUES:[Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 2
    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 8
    return-object v0
    .line 10
.end method
