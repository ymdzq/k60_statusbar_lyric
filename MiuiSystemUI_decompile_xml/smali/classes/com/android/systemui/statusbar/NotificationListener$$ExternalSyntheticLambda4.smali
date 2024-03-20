.class public final synthetic Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/os/UserHandle;

.field public final synthetic f$3:Landroid/app/NotificationChannel;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$2:Landroid/os/UserHandle;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$3:Landroid/app/NotificationChannel;

    .line 11
    iput p5, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$4:I

    .line 13
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$1:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$2:Landroid/os/UserHandle;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$3:Landroid/app/NotificationChannel;

    .line 8
    iget p0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda4;->f$4:I

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 12
    check-cast v0, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    check-cast v4, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 30
    invoke-interface {v4, v1, v2, v3, p0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationChannelModified(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 32
    goto :goto_0

    .line 35
    :cond_0
    return-void
    .line 36
.end method
