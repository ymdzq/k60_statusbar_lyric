.class public final synthetic Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/toast/MIUIStrongToast;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/MIUIStrongToast;ILandroid/graphics/Rect;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 4
    iput p2, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$1:I

    .line 6
    iput-object p3, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$2:Landroid/graphics/Rect;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    const-string v1, "MIUIStrongToast"

    .line 4
    const-string/jumbo v2, "width :"

    .line 6
    const-string v3, "rect:"

    .line 9
    const-string v4, "containerMargin:"

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 13
    goto :goto_0

    .line 16
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 17
    iget v5, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$1:I

    .line 19
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$2:Landroid/graphics/Rect;

    .line 21
    sget v6, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    .line 28
    const-string v7, "leftMargin:"

    .line 30
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v4, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    .line 41
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 49
    move-result p0

    .line 52
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p0, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 61
    move-result p0

    .line 64
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 71
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 76
    iget v5, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$1:I

    .line 78
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$2:Landroid/graphics/Rect;

    .line 80
    sget v6, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v7, "rightMargin:"

    .line 89
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v4, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    .line 101
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 109
    move-result p0

    .line 112
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object p0, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 121
    move-result p0

    .line 124
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p0

    .line 131
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 136
.end method
