.class public final Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onEntryBind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/service/notification/StatusBarNotification;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver$initialize$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 7
    move-result-object v0

    .line 10
    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 11
    const-string v1, "android.appInfo"

    .line 13
    const-class v2, Landroid/content/pm/ApplicationInfo;

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 21
    const/4 v1, 0x0

    .line 23
    if-nez v0, :cond_0

    .line 24
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 30
    move-result v0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/TargetSdkResolver;->context:Landroid/content/Context;

    .line 34
    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/CentralSurfaces;->getPackageManagerForUser(ILandroid/content/Context;)Landroid/content/pm/PackageManager;

    .line 36
    move-result-object p0

    .line 39
    :try_start_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 43
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 44
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p0

    .line 49
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    const-string v2, "Failed looking up ApplicationInfo for "

    .line 56
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 67
    const-string v0, "TargetSdkResolver"

    .line 68
    invoke-static {v0, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 p0, 0x0

    .line 73
    :goto_0
    move-object v0, p0

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    .line 75
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 77
    :cond_1
    iput v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->targetSdk:I

    .line 79
    return-void
    .line 81
.end method
