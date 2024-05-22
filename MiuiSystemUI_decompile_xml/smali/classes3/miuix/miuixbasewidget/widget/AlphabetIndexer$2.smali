.class public final Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;


# direct methods
.method public synthetic constructor <init>(Lmiuix/miuixbasewidget/widget/AlphabetIndexer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 7
    return-void

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 17
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 27
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 28
    iget-object p2, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 30
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 32
    if-ne p2, v0, :cond_0

    .line 34
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 36
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCancelOverlayTextColorAnim:Z

    .line 39
    :cond_1
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
    .line 42
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->$r8$classId:I

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
    iget-object p0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isPressed()Z

    .line 16
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    iget-boolean p1, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mEnableAutoDismiss:Z

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->stop()V

    .line 26
    :cond_0
    return-void

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 30
.end method

.method public final onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 3

    .line 1
    iget v0, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer$2;->this$0:Lmiuix/miuixbasewidget/widget/AlphabetIndexer;

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_1

    .line 10
    :pswitch_0
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 11
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p0

    .line 17
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    check-cast p1, Lmiuix/animation/listener/UpdateInfo;

    .line 28
    iget-object p2, p1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 30
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 32
    if-eq p2, v0, :cond_0

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 37
    sget p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->$r8$clinit:I

    .line 40
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    throw v1

    .line 45
    :cond_1
    return-void

    .line 46
    :goto_1
    invoke-super {p0, p1, p2}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 47
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 50
    move-result-object p0

    .line 53
    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    move-result p1

    .line 57
    if-eqz p1, :cond_5

    .line 58
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    move-result-object p1

    .line 63
    check-cast p1, Lmiuix/animation/listener/UpdateInfo;

    .line 64
    iget-object p2, p1, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 66
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 68
    if-eq p2, v0, :cond_4

    .line 70
    sget-object v0, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 72
    if-ne p2, v0, :cond_2

    .line 74
    iget-boolean p2, v2, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->mCancelOverlayTextColorAnim:Z

    .line 76
    if-eqz p2, :cond_3

    .line 78
    goto :goto_2

    .line 80
    :cond_3
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 81
    throw v1

    .line 84
    :cond_4
    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 85
    sget p0, Lmiuix/miuixbasewidget/widget/AlphabetIndexer;->$r8$clinit:I

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    throw v1

    .line 93
    :cond_5
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 96
.end method
