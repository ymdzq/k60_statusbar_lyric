.class public final Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;
.super Landroid/view/accessibility/IWindowMagnificationConnection$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

.field public final mHandler:Landroid/os/Handler;

.field public final mWindowMagnification:Lcom/android/systemui/accessibility/WindowMagnification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnification;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mWindowMagnification:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final disableWindowMagnification(ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda6;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;ILandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final enableWindowMagnification(IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 11

    .line 1
    move-object v1, p0

    .line 2
    iget-object v9, v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 3
    new-instance v10, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda1;

    .line 5
    move-object v0, v10

    .line 7
    move v2, p1

    .line 8
    move v3, p2

    .line 9
    move v4, p3

    .line 10
    move v5, p4

    .line 11
    move/from16 v6, p5

    .line 12
    move/from16 v7, p6

    .line 14
    move-object/from16 v8, p7

    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IFFFFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 18
    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return-void
    .line 24
.end method

.method public final moveWindowMagnifier(IFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda4;

    .line 4
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IFF)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final moveWindowMagnifierToPosition(IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v7, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda0;

    .line 4
    move-object v1, v7

    .line 6
    move-object v2, p0

    .line 7
    move v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    move-object v6, p4

    .line 11
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V

    .line 12
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method public final removeMagnificationButton(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda5;

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;II)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
    .line 13
.end method

.method public final removeMagnificationSettingsPanel(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda5;

    .line 4
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;II)V

    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
    .line 13
.end method

.method public final setConnectionCallback(Landroid/view/accessibility/IWindowMagnificationConnectionCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 2
    return-void
    .line 4
.end method

.method public final setScale(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda3;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;IF)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final showMagnificationButton(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mHandler:Landroid/os/Handler;

    .line 2
    new-instance v1, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda2;

    .line 4
    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;II)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method
