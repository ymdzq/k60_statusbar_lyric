.class public abstract synthetic Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$WhenMappings;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->values()[Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x4

    .line 10
    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :catch_0
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_1
    aput v1, v0, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 15
    :catch_1
    sput-object v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 17
    return-void
    .line 19
.end method
