.class public final Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final bindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public isStatusBarExpanded:Z

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->bindEventManager:Lcom/android/systemui/statusbar/notification/collection/inflation/BindEventManagerImpl;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 11
    return-void
    .line 13
.end method

.method public static final access$updateAnimatedImageDrawables(Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->row:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 5
    if-eqz p1, :cond_4

    .line 7
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsHeadsUp:Z

    .line 9
    if-nez v0, :cond_1

    .line 11
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager;->isStatusBarExpanded:Z

    .line 13
    if-eqz p0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 20
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getLayouts()[Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 21
    move-result-object p1

    .line 24
    if-eqz p1, :cond_2

    .line 25
    invoke-static {p1}, Lkotlin/collections/ArraysKt___ArraysKt;->asSequence([Ljava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 27
    move-result-object p1

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    sget-object p1, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 32
    :goto_2
    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$2;

    .line 34
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 36
    move-result-object p1

    .line 39
    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$3;

    .line 40
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 42
    move-result-object p1

    .line 45
    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$4;

    .line 46
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->flatMap(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FlatteningSequence;

    .line 48
    move-result-object p1

    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$5;->INSTANCE:Lcom/android/systemui/statusbar/notification/AnimatedImageNotificationManager$updateAnimatedImageDrawables$5;

    .line 52
    invoke-static {p1, v0}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 54
    move-result-object p1

    .line 57
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 58
    invoke-direct {v0, p1}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 60
    :goto_3
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 63
    move-result p1

    .line 66
    if-eqz p1, :cond_4

    .line 67
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 69
    move-result-object p1

    .line 72
    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 73
    if-eqz p0, :cond_3

    .line 75
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    .line 77
    goto :goto_3

    .line 80
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    .line 81
    goto :goto_3

    .line 84
    :cond_4
    return-void
    .line 85
.end method
