.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardEditorHelper$EditorStateListener;


# instance fields
.field public final synthetic $notificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;->$notificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onEditorStateChanged(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/systemui/shade/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "onEditorStateChanged "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "NotificationPanelView"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 23
    iget-object v1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mEditorState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 25
    sget-object v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 27
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 29
    move-result v2

    .line 32
    aget v1, v1, v2

    .line 33
    const/4 v2, 0x1

    .line 35
    if-eq v1, v2, :cond_0

    .line 36
    const/4 v2, 0x2

    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    new-instance v1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;

    .line 42
    const/4 v2, 0x0

    .line 44
    invoke-direct {v1, v0, p1, v2}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;-><init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Ljava/lang/Object;I)V

    .line 45
    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 48
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 50
    :goto_0
    iput-object p1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mEditorState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1;->$notificationShadeDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->editorState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 57
    if-ne v0, p1, :cond_1

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->editorState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->scheduleUpdate()V

    .line 64
    :goto_1
    return-void
    .line 67
.end method
