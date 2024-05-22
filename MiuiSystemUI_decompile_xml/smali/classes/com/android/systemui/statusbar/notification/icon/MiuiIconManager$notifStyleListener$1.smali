.class public final Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$notifStyleListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/systemui/modulesettings/NotificationSettings$StyleListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$notifStyleListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged$1()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager$notifStyleListener$1;->this$0:Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/MiuiIconManager;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 8
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 26
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/icon/IconManager;->updateIconsSafe(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    return-void
    .line 32
.end method
