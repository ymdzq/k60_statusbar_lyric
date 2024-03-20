.class public final synthetic Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController;

.field public final synthetic f$1:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController;Lcom/android/systemui/statusbar/notification/ExpandedNotification;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;->f$1:Landroid/service/notification/StatusBarNotification;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController$$ExternalSyntheticLambda0;->f$2:Landroid/net/Uri;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MiuiRemoteInputUriController;->mStatusBarManagerService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 11
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 17
    move-result-object v3

    .line 20
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    invoke-interface {v0, v2, p0, v3, v1}, Lcom/android/internal/statusbar/IStatusBarService;->grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "Failed to grant URI permissions:"

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    const-string v1, "RemoteInputUriController"

    .line 48
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    :goto_0
    return-void
    .line 53
.end method
