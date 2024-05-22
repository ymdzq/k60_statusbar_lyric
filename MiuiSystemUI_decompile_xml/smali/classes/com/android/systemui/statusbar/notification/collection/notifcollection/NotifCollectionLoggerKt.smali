.class public abstract Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLoggerKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static final cancellationReasonDebugString(I)Ljava/lang/String;
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    const-string/jumbo v0, "unknown"

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    const-string v0, "REASON_ASSISTANT_CANCEL"

    .line 9
    goto :goto_0

    .line 11
    :pswitch_1
    const-string v0, "REASON_CLEAR_DATA"

    .line 12
    goto :goto_0

    .line 14
    :pswitch_2
    const-string v0, "REASON_CHANNEL_REMOVED"

    .line 15
    goto :goto_0

    .line 17
    :pswitch_3
    const-string v0, "REASON_TIMEOUT"

    .line 18
    goto :goto_0

    .line 20
    :pswitch_4
    const-string v0, "REASON_SNOOZED"

    .line 21
    goto :goto_0

    .line 23
    :pswitch_5
    const-string v0, "REASON_CHANNEL_BANNED"

    .line 24
    goto :goto_0

    .line 26
    :pswitch_6
    const-string v0, "REASON_UNAUTOBUNDLED"

    .line 27
    goto :goto_0

    .line 29
    :pswitch_7
    const-string v0, "REASON_PROFILE_TURNED_OFF"

    .line 30
    goto :goto_0

    .line 32
    :pswitch_8
    const-string v0, "REASON_PACKAGE_SUSPENDED"

    .line 33
    goto :goto_0

    .line 35
    :pswitch_9
    const-string v0, "REASON_GROUP_OPTIMIZATION"

    .line 36
    goto :goto_0

    .line 38
    :pswitch_a
    const-string v0, "REASON_GROUP_SUMMARY_CANCELED"

    .line 39
    goto :goto_0

    .line 41
    :pswitch_b
    const-string v0, "REASON_LISTENER_CANCEL_ALL"

    .line 42
    goto :goto_0

    .line 44
    :pswitch_c
    const-string v0, "REASON_LISTENER_CANCEL"

    .line 45
    goto :goto_0

    .line 47
    :pswitch_d
    const-string v0, "REASON_APP_CANCEL_ALL"

    .line 48
    goto :goto_0

    .line 50
    :pswitch_e
    const-string v0, "REASON_APP_CANCEL"

    .line 51
    goto :goto_0

    .line 53
    :pswitch_f
    const-string v0, "REASON_PACKAGE_BANNED"

    .line 54
    goto :goto_0

    .line 56
    :pswitch_10
    const-string v0, "REASON_USER_STOPPED"

    .line 57
    goto :goto_0

    .line 59
    :pswitch_11
    const-string v0, "REASON_PACKAGE_CHANGED"

    .line 60
    goto :goto_0

    .line 62
    :pswitch_12
    const-string v0, "REASON_ERROR"

    .line 63
    goto :goto_0

    .line 65
    :pswitch_13
    const-string v0, "REASON_CANCEL_ALL"

    .line 66
    goto :goto_0

    .line 68
    :pswitch_14
    const-string v0, "REASON_CANCEL"

    .line 69
    goto :goto_0

    .line 71
    :pswitch_15
    const-string v0, "REASON_CLICK"

    .line 72
    goto :goto_0

    .line 74
    :pswitch_16
    const-string v0, "REASON_UNKNOWN"

    .line 75
    goto :goto_0

    .line 77
    :pswitch_17
    const-string v0, "REASON_NOT_CANCELED"

    .line 78
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string p0, ":"

    .line 88
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 99
    return-object p0

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 102
.end method
