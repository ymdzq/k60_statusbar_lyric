.class public final synthetic Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/io/Serializable;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$1:Ljava/io/Serializable;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const-string v1, "NotificationLogger"

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_4

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 10
    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;

    .line 12
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$1:Ljava/io/Serializable;

    .line 14
    check-cast v2, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 18
    check-cast p0, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 25
    invoke-interface {v3, v2, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    array-length v3, v2

    .line 30
    const/4 v4, 0x0

    .line 31
    if-lez v3, :cond_1

    .line 32
    new-array v5, v3, [Ljava/lang/String;

    .line 34
    move v6, v4

    .line 36
    :goto_0
    if-ge v6, v3, :cond_0

    .line 37
    aget-object v7, v2, v6

    .line 39
    iget-object v7, v7, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    .line 41
    aput-object v7, v5, v6

    .line 43
    add-int/lit8 v6, v6, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    .line 48
    invoke-virtual {v0, v5}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 50
    goto :goto_1

    .line 53
    :catch_1
    move-exception v0

    .line 54
    const-string v3, "failed setNotificationsShown: "

    .line 55
    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    :cond_1
    :goto_1
    array-length v0, v2

    .line 60
    move v1, v4

    .line 61
    :goto_2
    if-ge v1, v0, :cond_3

    .line 62
    aget-object v3, v2, v1

    .line 64
    if-eqz v3, :cond_2

    .line 66
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 68
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 71
    goto :goto_2

    .line 73
    :cond_3
    array-length v0, p0

    .line 74
    :goto_3
    if-ge v4, v0, :cond_5

    .line 75
    aget-object v1, p0, v4

    .line 77
    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {v1}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 81
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 84
    goto :goto_3

    .line 86
    :cond_5
    return-void

    .line 87
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 88
    check-cast v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$1:Ljava/io/Serializable;

    .line 92
    check-cast v2, Ljava/lang/String;

    .line 94
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 96
    check-cast p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    :try_start_2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 103
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsUserAction:Ljava/lang/Boolean;

    .line 105
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    move-result v3

    .line 110
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mIsExpanded:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    move-result v4

    .line 116
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;->mLocation:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->ordinal()I

    .line 119
    move-result p0

    .line 122
    invoke-interface {v0, v2, v3, v4, p0}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 123
    goto :goto_5

    .line 126
    :catch_2
    move-exception p0

    .line 127
    const-string v0, "Failed to call onNotificationExpansionChanged: "

    .line 128
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    :goto_5
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 134
.end method
