.class public final synthetic Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/WindowMagnification$2;III)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 4
    iput p2, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$1:I

    .line 6
    iput p3, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$2:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 8
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$1:I

    .line 10
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$2:I

    .line 12
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 14
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification;->mMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 16
    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationSizeScaleOptions:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->contains(I)Z

    .line 28
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mMagnificationSizeScaleOptions:Landroid/util/SparseArray;

    .line 35
    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    move-result-object v2

    .line 42
    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 46
    check-cast p0, Ljava/lang/Float;

    .line 47
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    .line 49
    move-result p0

    .line 52
    iget-object v1, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    .line 53
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 55
    move-result v1

    .line 58
    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnificationController;->mWindowBounds:Landroid/graphics/Rect;

    .line 59
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 61
    move-result v2

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 65
    move-result v1

    .line 68
    div-int/lit8 v1, v1, 0x3

    .line 69
    int-to-float v1, v1

    .line 71
    mul-float/2addr v1, p0

    .line 72
    float-to-int p0, v1

    .line 73
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 74
    invoke-virtual {v0, v1, v1, p0, p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setWindowSizeAndCenter(FFII)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 79
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/WindowMagnification$2;

    .line 80
    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$1:I

    .line 82
    iget p0, p0, Lcom/android/systemui/accessibility/WindowMagnification$3$$ExternalSyntheticLambda1;->f$2:I

    .line 84
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnification;

    .line 86
    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnification;->mMagnificationControllerSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 88
    invoke-virtual {v2, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 93
    check-cast v2, Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 94
    invoke-virtual {v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->isActivated()Z

    .line 96
    move-result v2

    .line 99
    const/4 v3, 0x2

    .line 100
    const/4 v4, 0x1

    .line 101
    if-ne p0, v3, :cond_2

    .line 102
    move v3, v4

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    const/4 v3, 0x0

    .line 106
    :goto_2
    xor-int/2addr v2, v3

    .line 107
    if-eqz v2, :cond_4

    .line 108
    iget-object v2, v0, Lcom/android/systemui/accessibility/WindowMagnification;->mMagnificationSettingsSupplier:Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;

    .line 110
    invoke-virtual {v2, v1}, Lcom/android/systemui/accessibility/DisplayIdIndexSupplier;->get(I)Ljava/lang/Object;

    .line 112
    move-result-object v2

    .line 115
    check-cast v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;

    .line 116
    if-eqz v2, :cond_3

    .line 118
    iget-object v3, v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {v3, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 122
    iget-object v2, v2, Lcom/android/systemui/accessibility/MagnificationSettingsController;->mWindowMagnificationSettings:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    .line 125
    invoke-virtual {v2, v4}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->hideSettingPanel(Z)V

    .line 127
    :cond_3
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnification;->mWindowMagnificationConnectionImpl:Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;

    .line 130
    if-eqz v0, :cond_4

    .line 132
    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationConnectionImpl;->mConnectionCallback:Landroid/view/accessibility/IWindowMagnificationConnectionCallback;

    .line 134
    if-eqz v0, :cond_4

    .line 136
    :try_start_0
    invoke-interface {v0, v1, p0}, Landroid/view/accessibility/IWindowMagnificationConnectionCallback;->onChangeMagnificationMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    goto :goto_3

    .line 141
    :catch_0
    move-exception p0

    .line 142
    const-string v0, "WindowMagnificationConnectionImpl"

    .line 143
    const-string v1, "Failed to inform changing magnification mode"

    .line 145
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    :cond_4
    :goto_3
    return-void

    .line 150
    nop

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 152
.end method
