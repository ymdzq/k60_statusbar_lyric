.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;
.super Landroid/widget/BaseAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 4
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOverflowItems:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result p0

    .line 15
    return p0

    .line 16
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mPowerItems:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result p0

    .line 24
    return p0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 26
.end method

.method public final getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;
    .locals 1

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    return-object p0

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mPowerItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    move-result-object p0

    return-object p0

    .line 2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    int-to-long p0, p1

    .line 8
    return-wide p0

    .line 9
    :goto_0
    int-to-long p0, p1

    .line 10
    return-wide p0

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 12
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const-string v3, "GlobalActionsDialogLite"

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_2

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 12
    move-result-object v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    const-string p0, "No overflow action found at position: "

    .line 18
    invoke-static {p0, p1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 20
    goto :goto_1

    .line 23
    :cond_0
    if-eqz p2, :cond_1

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 27
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    move-result-object p0

    .line 34
    const p1, 0x7f0d0082    # @layout/controls_more_item 'res/layout/controls_more_item.xml'

    .line 35
    invoke-virtual {p0, p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    move-result-object p2

    .line 41
    :goto_0
    move-object v2, p2

    .line 42
    check-cast v2, Landroid/widget/TextView;

    .line 43
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->getMessageResId()I

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->getMessageResId()I

    .line 51
    move-result p0

    .line 54
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(I)V

    .line 55
    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->getMessage()Ljava/lang/CharSequence;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    :goto_1
    return-object v2

    .line 66
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 67
    move-result-object v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    const-string p0, "No power options action found at position: "

    .line 73
    invoke-static {p0, p1, v3}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    goto :goto_5

    .line 78
    :cond_3
    if-eqz p2, :cond_4

    .line 79
    goto :goto_3

    .line 81
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 82
    iget-object p2, p2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 86
    move-result-object p2

    .line 89
    const v2, 0x7f0d00ce    # @layout/global_actions_power_item 'res/layout/global_actions_power_item.xml'

    .line 90
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 93
    move-result-object p2

    .line 96
    :goto_3
    new-instance p3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;

    .line 97
    const/4 v1, 0x1

    .line 99
    invoke-direct {p3, p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/widget/BaseAdapter;II)V

    .line 100
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    instance-of p3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;

    .line 106
    if-eqz p3, :cond_5

    .line 108
    new-instance p3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;

    .line 110
    invoke-direct {p3, p0, p1, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter$$ExternalSyntheticLambda1;-><init>(Landroid/widget/BaseAdapter;II)V

    .line 112
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 115
    :cond_5
    const p1, 0x1020006    # @android:id/icon

    .line 118
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    move-result-object p1

    .line 124
    check-cast p1, Landroid/widget/ImageView;

    .line 125
    const p3, 0x102000b    # @android:id/message

    .line 127
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    move-result-object p3

    .line 133
    check-cast p3, Landroid/widget/TextView;

    .line 134
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 136
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 139
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    .line 141
    invoke-interface {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 143
    move-result-object p0

    .line 146
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 150
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->getMessage()Ljava/lang/CharSequence;

    .line 155
    move-result-object p0

    .line 158
    if-eqz p0, :cond_6

    .line 159
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->getMessage()Ljava/lang/CharSequence;

    .line 161
    move-result-object p0

    .line 164
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    goto :goto_4

    .line 168
    :cond_6
    invoke-interface {v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->getMessageResId()I

    .line 169
    move-result p0

    .line 172
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(I)V

    .line 173
    :goto_4
    move-object v2, p2

    .line 176
    :goto_5
    return-object v2

    .line 177
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 178
.end method

.method public final onClickItem(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$classId:I

    .line 2
    const-string v1, "Action clicked while mDialog is null."

    .line 4
    const-string v2, "GlobalActionsDialogLite"

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 12
    move-result-object p1

    .line 15
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;

    .line 16
    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 20
    iget-object v3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 22
    if-eqz v3, :cond_0

    .line 24
    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 26
    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogLaunchAnimator;->disableAllCurrentDialogsExitAnimations()V

    .line 28
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 31
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->onPress()V

    .line 42
    :cond_1
    return-void

    .line 45
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 46
    move-result-object p1

    .line 49
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;

    .line 50
    if-nez v0, :cond_3

    .line 52
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 54
    iget-object v3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 56
    if-eqz v3, :cond_2

    .line 58
    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 60
    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogLaunchAnimator;->disableAllCurrentDialogsExitAnimations()V

    .line 62
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    .line 69
    goto :goto_2

    .line 72
    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_2
    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->onPress()V

    .line 76
    :cond_3
    return-void

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 80
.end method

.method public final onLongClickItem(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->$r8$classId:I

    .line 2
    const-string v1, "Action long-clicked while mDialog is null."

    .line 4
    const-string v2, "GlobalActionsDialogLite"

    .line 6
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    goto :goto_1

    .line 12
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 13
    move-result-object p1

    .line 16
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 21
    iget-object v3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 23
    if-eqz v3, :cond_0

    .line 25
    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogLaunchAnimator;->disableAllCurrentDialogsExitAnimations()V

    .line 29
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 32
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;

    .line 43
    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;->onLongPress()Z

    .line 45
    move-result v3

    .line 48
    :cond_1
    return v3

    .line 49
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->getItem(I)Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    .line 50
    move-result-object p1

    .line 53
    instance-of v0, p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;

    .line 54
    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 58
    iget-object v3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 60
    if-eqz v3, :cond_2

    .line 62
    iget-object v0, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/animation/DialogLaunchAnimator;->disableAllCurrentDialogsExitAnimations()V

    .line 66
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialogLite;

    .line 69
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->dismiss()V

    .line 73
    goto :goto_2

    .line 76
    :cond_2
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_2
    check-cast p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;

    .line 80
    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LongPressAction;->onLongPress()Z

    .line 82
    move-result v3

    .line 85
    :cond_3
    return v3

    .line 86
    nop

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 88
.end method
