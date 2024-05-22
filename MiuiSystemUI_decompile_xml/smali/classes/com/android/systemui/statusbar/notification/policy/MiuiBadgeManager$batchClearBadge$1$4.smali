.class public final Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$4;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$batchClearBadge$1$4;->this$0:Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;

    .line 4
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->pkgName:Ljava/lang/String;

    .line 6
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->clsName:Ljava/lang/CharSequence;

    .line 8
    const/4 v3, 0x0

    .line 10
    iget v4, p1, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager$ClearBadgeStruct;->userId:I

    .line 11
    const/4 v5, 0x1

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/policy/MiuiBadgeManager;->updateAppBadgeNum(Ljava/lang/String;Ljava/lang/CharSequence;IIZ)V

    .line 14
    return-void
    .line 17
.end method
