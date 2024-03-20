.class public final Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation$doNotificationWakeUpOrSleepAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation$doNotificationWakeUpOrSleepAnimation$1;->$view:Landroid/view/View;

    .line 2
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiNotificationWakeUpAnimation$doNotificationWakeUpOrSleepAnimation$1;->$view:Landroid/view/View;

    .line 5
    instance-of p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 7
    if-eqz p1, :cond_2

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 15
    move-result-object p0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    if-nez p0, :cond_1

    .line 21
    goto :goto_1

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/MiuiViewStateBase;->animatingWakeUp:Z

    .line 25
    :cond_2
    :goto_1
    return-void
    .line 27
.end method
