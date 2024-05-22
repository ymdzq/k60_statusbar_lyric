.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onGutsClose(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->logger:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    .line 4
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsClosed$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsClosed$2;

    .line 13
    const-string v4, "GutsCoordinator"

    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 17
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->access$closeGutsAndEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 30
    return-void
    .line 33
.end method

.method public final onGutsOpen(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator$mGutsListener$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->logger:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;

    .line 4
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger$logGutsOpened$2;

    .line 13
    const/4 v4, 0x0

    .line 15
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 16
    const-string v5, "GutsCoordinator"

    .line 18
    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->getGutsContent()Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 27
    move-result-object v3

    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-result-object v3

    .line 34
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 35
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 42
    invoke-interface {v2, v3}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 43
    iget-object v3, p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 46
    const/4 v4, 0x1

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v3, :cond_0

    .line 50
    invoke-interface {v3}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    .line 52
    move-result v3

    .line 55
    if-eqz v3, :cond_0

    .line 56
    move v3, v4

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v3, v5

    .line 60
    :goto_0
    invoke-interface {v2, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 61
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 64
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->mGutsContent:Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 67
    if-eqz p2, :cond_1

    .line 69
    invoke-interface {p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;->isLeavebehind()Z

    .line 71
    move-result p2

    .line 74
    if-eqz p2, :cond_1

    .line 75
    goto :goto_1

    .line 77
    :cond_1
    move v4, v5

    .line 78
    :goto_1
    if-eqz v4, :cond_2

    .line 79
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->access$closeGutsAndEndLifetimeExtension(Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 81
    goto :goto_2

    .line 84
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GutsCoordinator;->notifsWithOpenGuts:Landroid/util/ArraySet;

    .line 85
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 87
    :goto_2
    return-void
    .line 90
.end method
