.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$3;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$3;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$3;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 2
    new-instance p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;

    .line 4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 6
    return-object p0
    .line 9
.end method
