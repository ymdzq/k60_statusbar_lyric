.class public final synthetic Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[Landroid/graphics/Rect;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$3:Landroid/app/PictureInPictureParams;

.field public final synthetic f$4:I

.field public final synthetic f$5:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>([Landroid/graphics/Rect;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;ILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$0:[Landroid/graphics/Rect;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$2:Landroid/content/pm/ActivityInfo;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$3:Landroid/app/PictureInPictureParams;

    .line 11
    iput p5, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$4:I

    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/Rect;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$0:[Landroid/graphics/Rect;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$1:Landroid/content/ComponentName;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$2:Landroid/content/pm/ActivityInfo;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$3:Landroid/app/PictureInPictureParams;

    .line 8
    iget v4, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$4:I

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController$IPipImpl$$ExternalSyntheticLambda1;->f$5:Landroid/graphics/Rect;

    .line 12
    check-cast p1, Lcom/android/wm/shell/pip/phone/PipController;

    .line 14
    iget-boolean v5, p1, Lcom/android/wm/shell/pip/phone/PipController;->mEnablePipKeepClearAlgorithm:Z

    .line 16
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x1

    .line 19
    iget-object v8, p1, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 20
    if-eqz v5, :cond_0

    .line 22
    iget-object v5, v8, Lcom/android/wm/shell/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    .line 24
    check-cast v5, Landroid/util/ArraySet;

    .line 26
    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    goto :goto_2

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 32
    move-result p0

    .line 35
    if-lez p0, :cond_1

    .line 36
    move v5, v7

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v5, v6

    .line 40
    :goto_0
    if-eqz v5, :cond_2

    .line 41
    goto :goto_1

    .line 43
    :cond_2
    move p0, v6

    .line 44
    :goto_1
    invoke-virtual {v8, p0, v5, v7}, Lcom/android/wm/shell/pip/PipBoundsState;->setShelfVisibility(IZZ)V

    .line 45
    :goto_2
    iget-object p0, p1, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/pip/PipDisplayLayoutState;

    .line 48
    invoke-virtual {p0, v4}, Lcom/android/wm/shell/pip/PipDisplayLayoutState;->rotateTo(I)V

    .line 50
    iget-object p0, p1, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:Z

    .line 58
    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    .line 60
    if-eqz p1, :cond_3

    .line 62
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 67
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 71
    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 72
    filled-new-array {p1, v5}, [Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 77
    const v5, -0x163e3116

    .line 78
    const-string/jumbo v10, "startSwipePipToHome: %s, state=%s"

    .line 81
    invoke-static {v9, v5, v6, v10, p1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->d(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 84
    :cond_3
    iput-boolean v7, v4, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    .line 87
    const/4 p1, 0x3

    .line 89
    invoke-virtual {v4, p1}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    .line 90
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    .line 93
    const/4 v4, 0x2

    .line 95
    invoke-virtual {p1, v4}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionStarted(I)V

    .line 96
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/pip/PipBoundsState;

    .line 99
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/pip/PipBoundsAlgorithm;

    .line 101
    invoke-virtual {p1, v1, v2, v3, p0}, Lcom/android/wm/shell/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/pip/PipBoundsAlgorithm;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    .line 106
    move-result-object p0

    .line 109
    iget-object p1, v8, Lcom/android/wm/shell/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    .line 110
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    aput-object p0, v0, v6

    .line 115
    return-void
    .line 117
.end method
