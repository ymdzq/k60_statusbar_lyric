.class public final synthetic Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/app/PendingIntent;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Landroid/app/PendingIntent$CancelListener;

    .line 14
    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 16
    return-void

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 20
    check-cast v0, Landroid/app/PendingIntent;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 24
    check-cast p0, Landroid/app/PendingIntent$CancelListener;

    .line 26
    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 28
    return-void

    .line 31
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 32
    check-cast v0, Landroid/app/PendingIntent;

    .line 34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 36
    check-cast p0, Landroid/app/PendingIntent$CancelListener;

    .line 38
    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 40
    return-void

    .line 43
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 44
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    .line 48
    check-cast p0, Landroid/widget/Button;

    .line 50
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-virtual {p0}, Landroid/widget/Button;->isEnabled()Z

    .line 55
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 62
    invoke-virtual {p0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    .line 65
    move-result-object v2

    .line 68
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getColors()[I

    .line 69
    move-result-object v3

    .line 72
    array-length v4, v3

    .line 73
    new-array v4, v4, [I

    .line 74
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    .line 76
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 78
    move-result-object v5

    .line 81
    const v6, 0x10501fe    # @android:dimen/notification_content_margin_top

    .line 82
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getFloat(I)F

    .line 85
    move-result v5

    .line 88
    :goto_1
    array-length v6, v3

    .line 89
    if-ge v1, v6, :cond_0

    .line 90
    aget v6, v3, v1

    .line 92
    const/high16 v7, 0x437f0000    # 255.0f

    .line 94
    mul-float/2addr v7, v5

    .line 96
    float-to-int v7, v7

    .line 97
    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    .line 98
    move-result v8

    .line 101
    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    .line 102
    move-result v9

    .line 105
    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    .line 106
    move-result v6

    .line 109
    invoke-static {v7, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    .line 110
    move-result v6

    .line 113
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->resolveBackgroundColor()I

    .line 114
    move-result v7

    .line 117
    invoke-static {v6, v7}, Lcom/android/internal/util/ContrastColorUtil;->compositeColors(II)I

    .line 118
    move-result v6

    .line 121
    aput v6, v4, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    .line 124
    goto :goto_1

    .line 126
    :cond_0
    new-instance v0, Landroid/content/res/ColorStateList;

    .line 127
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getStates()[[I

    .line 129
    move-result-object v1

    .line 132
    invoke-direct {v0, v1, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 136
    :cond_1
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 140
.end method
