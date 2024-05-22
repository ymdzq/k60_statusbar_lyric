.class public final synthetic Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    .line 8
    iget p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    .line 12
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 14
    monitor-enter v1

    .line 16
    :try_start_0
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 17
    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    monitor-exit v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 27
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 29
    move-result v2

    .line 32
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 33
    if-ltz v2, :cond_1

    .line 35
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 42
    check-cast v3, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 43
    invoke-interface {v3, p0}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onDisplayRemoved(I)V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 49
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 51
    monitor-exit v1

    .line 54
    :goto_1
    return-void

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0

    .line 58
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    .line 59
    iget p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 61
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    .line 63
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->onDisplayAdded(I)V

    .line 65
    return-void

    .line 68
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;

    .line 69
    iget p0, p0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl$$ExternalSyntheticLambda2;->f$1:I

    .line 71
    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayController$DisplayWindowListenerImpl;->this$0:Lcom/android/wm/shell/common/DisplayController;

    .line 73
    const-string v1, "Skipping onFixedRotationFinished on unknown display, displayId="

    .line 75
    iget-object v2, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 77
    monitor-enter v2

    .line 79
    :try_start_1
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplays:Landroid/util/SparseArray;

    .line 80
    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v3

    .line 85
    if-eqz v3, :cond_4

    .line 86
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    .line 88
    move-result-object v3

    .line 91
    if-nez v3, :cond_2

    .line 92
    goto :goto_4

    .line 94
    :cond_2
    iget-object v1, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 97
    move-result v1

    .line 100
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 101
    if-ltz v1, :cond_3

    .line 103
    iget-object v3, v0, Lcom/android/wm/shell/common/DisplayController;->mDisplayChangedListeners:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v3

    .line 110
    check-cast v3, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 111
    invoke-interface {v3, p0}, Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;->onFixedRotationFinished(I)V

    .line 113
    goto :goto_3

    .line 116
    :cond_3
    monitor-exit v2

    .line 117
    goto :goto_5

    .line 118
    :cond_4
    :goto_4
    const-string v0, "DisplayController"

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 132
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    monitor-exit v2

    .line 136
    :goto_5
    return-void

    .line 137
    :catchall_1
    move-exception p0

    .line 138
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    throw p0

    .line 140
    nop

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 142
.end method
