.class public final Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 11
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 15
    move-result-wide v0

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;->setLastActionUpTime(J)V

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController$TouchHandler;->this$0:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 24
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 26
    move-result p0

    .line 29
    const/4 p1, 0x0

    .line 30
    if-eqz p0, :cond_1

    .line 31
    return p1

    .line 33
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 34
    return p1
    .line 37
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method
