.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;
.super Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;-><init>(Lcom/android/systemui/statusbar/NotificationGroupingUtil$1$$ExternalSynthetic$IA0;)V

    .line 3
    return-void
    .line 6
.end method


# virtual methods
.method public final apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 1

    .line 1
    if-eqz p4, :cond_0

    .line 2
    instance-of v0, p1, Lcom/android/internal/widget/ConversationLayout;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    move-object p3, p1

    .line 8
    check-cast p3, Lcom/android/internal/widget/ConversationLayout;

    .line 9
    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->shouldHideAppName()Z

    .line 11
    move-result p3

    .line 14
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$1;->apply(Landroid/view/View;Landroid/view/View;ZZ)V

    .line 15
    return-void
    .line 18
.end method
