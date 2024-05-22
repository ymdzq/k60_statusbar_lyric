.class public final Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$t:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 17
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 22
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 14
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 17
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 22
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;->$r8$classId:I

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/clock/animation/ClockBaseAnimation$1;->val$t:Landroid/view/SurfaceControl$Transaction;

    .line 4
    const/4 v2, 0x1

    .line 6
    const-string v3, "ClockBaseAnimation"

    .line 7
    const-string/jumbo v4, "wallpaperBlack"

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 12
    goto :goto_0

    .line 15
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 16
    invoke-static {p2, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 19
    move-result-object p0

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    const-string p2, "WallpaperParam   toAod WallPaperAnimProcess : "

    .line 25
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 30
    move-result p2

    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 44
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 47
    move-result p0

    .line 50
    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->setWallPaperAnimProcess(F)Landroid/view/SurfaceControl$Transaction;

    .line 51
    return-void

    .line 54
    :goto_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 55
    invoke-static {p2, v4}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    .line 58
    move-result-object p0

    .line 61
    new-instance p1, Ljava/lang/StringBuilder;

    .line 62
    const-string p2, "WallpaperParam   toLock WallPaperAnimProcess : "

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 69
    move-result p2

    .line 72
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 79
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->enableWallPaperAnim(Z)Landroid/view/SurfaceControl$Transaction;

    .line 83
    invoke-virtual {p0}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 86
    move-result p0

    .line 89
    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->setWallPaperAnimProcess(F)Landroid/view/SurfaceControl$Transaction;

    .line 90
    return-void

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 94
.end method
