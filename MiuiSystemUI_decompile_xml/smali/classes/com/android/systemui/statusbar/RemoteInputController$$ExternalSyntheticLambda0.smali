.class public final synthetic Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/RemoteInputController;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/RemoteInputController;Landroid/util/IndentingPrintWriter;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mOpen:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Landroid/util/Pair;

    .line 28
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 38
    if-nez v1, :cond_0

    .line 40
    const-string v1, "???"

    .line 42
    goto :goto_1

    .line 44
    :cond_0
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 45
    :goto_1
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 47
    goto :goto_0

    .line 50
    :cond_1
    return-void

    .line 51
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/statusbar/RemoteInputController$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    .line 54
    iget-object v0, v0, Lcom/android/systemui/statusbar/RemoteInputController;->mSpinning:Landroid/util/ArrayMap;

    .line 56
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 58
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 62
    move-result-object v0

    .line 65
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    move-result-object v1

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 76
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 78
    goto :goto_3

    .line 81
    :cond_2
    return-void

    .line 82
    nop

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 84
.end method
