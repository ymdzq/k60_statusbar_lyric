.class public final Lcom/android/systemui/shade/ShadeControllerImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

.field public final synthetic val$executable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/ShadeControllerImpl;Lcom/android/systemui/statusbar/phone/StatusBarRemoteInputCallback$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->val$executable:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationShadeWindowViewController:Lcom/android/systemui/shade/NotificationShadeWindowViewController;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 6
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isVisibleToUser()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 16
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 18
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 20
    move-result-object v0

    .line 23
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->this$0:Lcom/android/systemui/shade/ShadeControllerImpl;

    .line 27
    iget-object v0, v0, Lcom/android/systemui/shade/ShadeControllerImpl;->mNotificationPanelViewController:Lcom/android/systemui/shade/NotificationPanelViewController;

    .line 29
    iget-object p0, p0, Lcom/android/systemui/shade/ShadeControllerImpl$1;->val$executable:Ljava/lang/Runnable;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 33
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 35
    :cond_0
    return-void
    .line 38
.end method
