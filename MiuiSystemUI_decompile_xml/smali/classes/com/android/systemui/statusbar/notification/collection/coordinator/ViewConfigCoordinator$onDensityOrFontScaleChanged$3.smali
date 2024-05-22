.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$3;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$3;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/ViewConfigCoordinator$onDensityOrFontScaleChanged$3;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    const-class p0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 4
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/DismissNotificationHelper;->dismissNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    .line 13
    return-void
    .line 16
.end method
