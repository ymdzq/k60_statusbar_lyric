.class public final Lcom/android/keyguard/KeyguardEditorHelper$8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardEditorHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardEditorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper$8;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStartedGoingToSleep()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper$8;->this$0:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterAndExitEditorMode()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 12
    const-string v1, "action_finish_editor"

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->sendCommandToEditor(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 22
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->clearViewRootImplAddSurfaceControl(Lcom/android/systemui/shade/NotificationPanelView;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseCreateSurfaceControl()V

    .line 27
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseEnterSurfaceControl()V

    .line 30
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 33
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 35
    :cond_0
    return-void
    .line 38
.end method
