.class public final synthetic Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
    const-string/jumbo v3, "rect:"

    .line 9
    const-string v4, "containerMargin:"

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 14
    goto :goto_0

    .line 17
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 18
    iget v5, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$1:I

    .line 20
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$2:Landroid/graphics/Rect;

    .line 22
    sget v6, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    const-string v7, "leftMargin:"

    .line 31
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v4, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    .line 42
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 50
    move-result p0

    .line 53
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object p0, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 62
    move-result p0

    .line 65
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 76
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$0:Lcom/android/systemui/toast/MIUIStrongToast;

    .line 77
    iget v5, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$1:I

    .line 79
    iget-object p0, p0, Lcom/android/systemui/toast/MIUIStrongToast$$ExternalSyntheticLambda7;->f$2:Landroid/graphics/Rect;

    .line 81
    sget v6, Lcom/android/systemui/toast/MIUIStrongToast;->$r8$clinit:I

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    new-instance v6, Ljava/lang/StringBuilder;

    .line 88
    const-string/jumbo v7, "rightMargin:"

    .line 90
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v4, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mContainerMargin:I

    .line 102
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 110
    move-result p0

    .line 113
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object p0, v0, Lcom/android/systemui/toast/MIUIStrongToast;->mCutOut:Landroid/view/View;

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 122
    move-result p0

    .line 125
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 132
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 138
.end method
