.class public final Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->$r8$classId:I

    .line 2
    const/4 v1, -0x1

    .line 4
    const v2, 0x7f1306ea    # @string/media_output_broadcast_edit_hint_no_more_than_max 'Use fewer than %1$d characters'

    .line 5
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x4

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    goto/16 :goto_7

    .line 14
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 16
    iget-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 18
    if-eqz v6, :cond_8

    .line 20
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 22
    if-nez v0, :cond_0

    .line 24
    goto/16 :goto_6

    .line 26
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 28
    move-result v0

    .line 31
    if-lez v0, :cond_1

    .line 32
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 34
    move-result v0

    .line 37
    if-ge v0, v4, :cond_1

    .line 38
    move v0, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v0, v3

    .line 42
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 43
    move-result p1

    .line 46
    const/16 v6, 0x10

    .line 47
    if-le p1, v6, :cond_2

    .line 49
    move p1, v5

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move p1, v3

    .line 53
    :goto_1
    if-nez v0, :cond_4

    .line 54
    if-eqz p1, :cond_3

    .line 56
    goto :goto_2

    .line 58
    :cond_3
    move v7, v3

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :goto_2
    move v7, v5

    .line 61
    :goto_3
    if-eqz v0, :cond_5

    .line 62
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 64
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f1306e8    # @string/media_output_broadcast_code_hint_no_less_than_min 'Use at least 4 characters'

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 71
    goto :goto_4

    .line 74
    :cond_5
    if-eqz p1, :cond_6

    .line 75
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 77
    iget-object v0, p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 79
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p1

    .line 86
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    move-result-object v6

    .line 90
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 91
    move-result-object v6

    .line 94
    invoke-virtual {p1, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 98
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_6
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 102
    iget-object p1, p1, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 104
    if-eqz v7, :cond_7

    .line 106
    goto :goto_5

    .line 108
    :cond_7
    move v3, v4

    .line 109
    :goto_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 113
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 115
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 117
    move-result-object p0

    .line 120
    if-eqz p0, :cond_8

    .line 121
    xor-int/lit8 p1, v7, 0x1

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    :cond_8
    :goto_6
    return-void

    .line 128
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 129
    iget-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 131
    if-eqz v6, :cond_f

    .line 133
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 135
    if-nez v0, :cond_9

    .line 137
    goto :goto_c

    .line 139
    :cond_9
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 140
    move-result v0

    .line 143
    const/16 v6, 0xfe

    .line 144
    if-le v0, v6, :cond_a

    .line 146
    move v0, v5

    .line 148
    goto :goto_8

    .line 149
    :cond_a
    move v0, v3

    .line 150
    :goto_8
    if-nez v0, :cond_c

    .line 151
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    .line 153
    move-result p1

    .line 156
    if-nez p1, :cond_b

    .line 157
    goto :goto_9

    .line 159
    :cond_b
    move p1, v3

    .line 160
    goto :goto_a

    .line 161
    :cond_c
    :goto_9
    move p1, v5

    .line 162
    :goto_a
    if-eqz v0, :cond_d

    .line 163
    iget-object v7, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 165
    iget-object v8, v7, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 167
    iget-object v7, v7, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 171
    move-result-object v7

    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    move-result-object v6

    .line 178
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 179
    move-result-object v6

    .line 182
    invoke-virtual {v7, v2, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    move-result-object v2

    .line 186
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_d
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 190
    iget-object v2, v2, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mBroadcastErrorMessage:Landroid/widget/TextView;

    .line 192
    if-eqz v0, :cond_e

    .line 194
    goto :goto_b

    .line 196
    :cond_e
    move v3, v4

    .line 197
    :goto_b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog$1;->this$0:Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;

    .line 201
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputBroadcastDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 203
    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    .line 205
    move-result-object p0

    .line 208
    if-eqz p0, :cond_f

    .line 209
    xor-int/2addr p1, v5

    .line 211
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    :cond_f
    :goto_c
    return-void

    .line 215
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 216
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
