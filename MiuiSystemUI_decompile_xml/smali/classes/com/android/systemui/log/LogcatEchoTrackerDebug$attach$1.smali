.class public final Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/log/LogcatEchoTrackerDebug;Landroid/os/Handler;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;->this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    .line 4
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;->this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    .line 11
    invoke-static {p0}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->access$clearCache(Lcom/android/systemui/log/LogcatEchoTrackerDebug;)V

    .line 13
    return-void

    .line 16
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 17
    iget-object p0, p0, Lcom/android/systemui/log/LogcatEchoTrackerDebug$attach$1;->this$0:Lcom/android/systemui/log/LogcatEchoTrackerDebug;

    .line 20
    invoke-static {p0}, Lcom/android/systemui/log/LogcatEchoTrackerDebug;->access$clearCache(Lcom/android/systemui/log/LogcatEchoTrackerDebug;)V

    .line 22
    return-void

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method
