.class public final Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$4;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$4;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/policy/AppMiniWindowManager$updateAllHeadsUpMiniBars$4;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;

    .line 2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/MiuiExpandableNotificationRow;->updateMiniWindowBar()V

    .line 4
    return-void
    .line 7
.end method
