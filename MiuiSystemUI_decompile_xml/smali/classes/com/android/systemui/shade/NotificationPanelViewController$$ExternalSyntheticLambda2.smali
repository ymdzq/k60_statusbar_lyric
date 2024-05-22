.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/window/StatusBarWindowStateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onStatusBarWindowStateChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 2
    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 6
    check-cast p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 8
    iget p1, p1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 10
    if-nez p1, :cond_2

    .line 12
    move-object p1, p0

    .line 14
    check-cast p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 15
    iget-boolean v0, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardShowing:Z

    .line 17
    const/4 v1, 0x0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    iget-object p1, p1, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardEditorHelper:Lcom/android/keyguard/KeyguardEditorHelper;

    .line 22
    iget-object p1, p1, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 24
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 26
    if-ne p1, v0, :cond_0

    .line 28
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move p1, v1

    .line 32
    :goto_0
    if-nez p1, :cond_2

    .line 33
    const/high16 p1, 0x3f800000    # 1.0f

    .line 35
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/systemui/shade/NotificationPanelViewController;->collapse(FZZ)V

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    :cond_2
    :goto_1
    return-void
    .line 44
.end method
