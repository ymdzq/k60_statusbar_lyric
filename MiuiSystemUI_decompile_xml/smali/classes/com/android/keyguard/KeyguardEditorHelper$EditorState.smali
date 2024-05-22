.class public final enum Lcom/android/keyguard/KeyguardEditorHelper$EditorState;
.super Ljava/lang/Enum;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $VALUES:[Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public static final enum EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public static final enum EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public static final enum IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public static final enum SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public static final enum SHOWINGEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public static final enum SHOWNEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public static final enum START:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    const-string v1, "IDEL"

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 10
    new-instance v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 12
    const-string v2, "START"

    .line 14
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;-><init>(Ljava/lang/String;I)V

    .line 17
    sput-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->START:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 20
    new-instance v2, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 22
    const-string v3, "SHOWINGEDITOR"

    .line 24
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v3, v4}, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v2, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 30
    new-instance v3, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 32
    const-string v4, "SHOWINGBOUNCER"

    .line 34
    const/4 v5, 0x3

    .line 36
    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;-><init>(Ljava/lang/String;I)V

    .line 37
    sput-object v3, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 40
    new-instance v4, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 42
    const-string v5, "SHOWNEDITOR"

    .line 44
    const/4 v6, 0x4

    .line 46
    invoke-direct {v4, v5, v6}, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;-><init>(Ljava/lang/String;I)V

    .line 47
    sput-object v4, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWNEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 50
    new-instance v5, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 52
    const-string v6, "EXITINGFROMBOUNCER"

    .line 54
    const/4 v7, 0x5

    .line 56
    invoke-direct {v5, v6, v7}, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;-><init>(Ljava/lang/String;I)V

    .line 57
    sput-object v5, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 60
    new-instance v6, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 62
    const-string v7, "EXITING"

    .line 64
    const/4 v8, 0x6

    .line 66
    invoke-direct {v6, v7, v8}, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;-><init>(Ljava/lang/String;I)V

    .line 67
    sput-object v6, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 70
    filled-new-array/range {v0 .. v6}, [Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 72
    move-result-object v0

    .line 75
    sput-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->$VALUES:[Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/keyguard/KeyguardEditorHelper$EditorState;
    .locals 1

    .line 1
    const-class v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 8
    return-object p0
    .line 10
.end method

.method public static values()[Lcom/android/keyguard/KeyguardEditorHelper$EditorState;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->$VALUES:[Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    invoke-virtual {v0}, [Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->clone()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 8
    return-object v0
    .line 10
.end method
