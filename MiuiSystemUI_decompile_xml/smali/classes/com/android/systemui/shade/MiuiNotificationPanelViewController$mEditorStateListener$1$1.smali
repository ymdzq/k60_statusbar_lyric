.class public final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $state:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->$state:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->$state:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 12
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 14
    if-eq p0, v1, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    invoke-static {v0, p0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->access$resetAllViewsStateOnEditorStateChanged(Lcom/android/systemui/shade/MiuiNotificationPanelViewController;Z)V

    .line 21
    return-void

    .line 24
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 25
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockBlurAnimator:Landroid/animation/ValueAnimator;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 34
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockSmartTransAnimator:Landroid/animation/ValueAnimator;

    .line 36
    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->this$0:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 43
    iget-object v0, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->unlockSmartScaleAnimator:Landroid/animation/ValueAnimator;

    .line 45
    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 49
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$mEditorStateListener$1$1;->$state:Ljava/lang/Object;

    .line 52
    check-cast p0, Ljava/lang/Runnable;

    .line 54
    if-eqz p0, :cond_4

    .line 56
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 58
    :cond_4
    return-void

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 62
.end method
