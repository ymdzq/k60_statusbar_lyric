.class final Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $visibleNotifications:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$1;->$visibleNotifications:Ljava/util/List;

    .line 2
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/stack/MiuiMediaHeaderView;

    .line 4
    if-nez v0, :cond_1

    .line 6
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/zen/ZenModeView;

    .line 8
    if-nez v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController$startNotificationWakeAnimation$animateShadeViews$1;->$visibleNotifications:Ljava/util/List;

    .line 12
    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    move-result-object p0

    .line 27
    return-object p0
    .line 28
.end method
