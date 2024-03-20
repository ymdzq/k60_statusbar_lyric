.class final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$2;->INSTANCE:Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$2;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 4
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_1

    .line 7
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    .line 9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    .line 11
    move-result-object p0

    .line 14
    const/4 p1, 0x1

    .line 15
    if-eqz p0, :cond_0

    .line 16
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    .line 18
    if-nez p0, :cond_0

    .line 20
    move p0, p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move p0, v0

    .line 24
    :goto_0
    if-eqz p0, :cond_1

    .line 25
    move v0, p1

    .line 27
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
    .line 32
.end method
