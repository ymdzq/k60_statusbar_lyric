.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$markHeadsUpNotificationsAsSeen$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$markHeadsUpNotificationsAsSeen$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$markHeadsUpNotificationsAsSeen$2;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$markHeadsUpNotificationsAsSeen$2;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$markHeadsUpNotificationsAsSeen$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/KeyguardCoordinator$markHeadsUpNotificationsAsSeen$2;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowPinned()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
