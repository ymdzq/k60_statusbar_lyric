.class public final synthetic Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v1, 0x4

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 9
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 11
    check-cast p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 18
    if-nez v0, :cond_0

    .line 20
    invoke-static {p0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 22
    :cond_0
    return-void

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 28
    check-cast p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    .line 35
    if-nez v0, :cond_1

    .line 37
    invoke-static {p0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    .line 39
    :cond_1
    return-void

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    .line 43
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 45
    check-cast p0, Landroid/content/res/Configuration;

    .line 47
    const/4 v1, 0x0

    .line 49
    move v2, v1

    .line 50
    :goto_1
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 51
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 53
    move-result v3

    .line 56
    if-ge v2, v3, :cond_7

    .line 57
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    .line 59
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    .line 65
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/DragLayout;

    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    .line 72
    const/4 v5, 0x2

    .line 74
    const/4 v6, 0x1

    .line 75
    if-ne v4, v5, :cond_2

    .line 76
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 78
    move-result v4

    .line 81
    if-eqz v4, :cond_2

    .line 82
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 84
    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    .line 87
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/draganddrop/DragLayout;->updateContainerMargins(I)V

    .line 89
    goto :goto_2

    .line 92
    :cond_2
    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    .line 93
    if-ne v4, v6, :cond_3

    .line 95
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 97
    move-result v4

    .line 100
    if-eq v4, v6, :cond_3

    .line 101
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 103
    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    .line 106
    invoke-virtual {v3, v4}, Lcom/android/wm/shell/draganddrop/DragLayout;->updateContainerMargins(I)V

    .line 108
    :cond_3
    :goto_2
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragLayout;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 111
    invoke-virtual {p0, v4}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 113
    move-result v4

    .line 116
    const/high16 v5, -0x80000000

    .line 117
    and-int/2addr v5, v4

    .line 119
    if-nez v5, :cond_5

    .line 120
    and-int/lit16 v4, v4, 0x200

    .line 122
    if-eqz v4, :cond_4

    .line 124
    goto :goto_3

    .line 126
    :cond_4
    move v6, v1

    .line 127
    :cond_5
    :goto_3
    if-eqz v6, :cond_6

    .line 128
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView1:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 130
    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->onThemeChange()V

    .line 132
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragLayout;->mDropZoneView2:Lcom/android/wm/shell/draganddrop/DropZoneView;

    .line 135
    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DropZoneView;->onThemeChange()V

    .line 137
    :cond_6
    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragLayout;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 140
    invoke-virtual {v3, p0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 145
    goto :goto_1

    .line 147
    :cond_7
    return-void

    .line 148
    nop

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 150
.end method
