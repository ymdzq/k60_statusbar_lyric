.class public final Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v0, 0x0

    .line 4
    const-string/jumbo v1, "tag_focused_icon"

    .line 5
    const/4 v2, 0x1

    .line 8
    packed-switch p1, :pswitch_data_0

    .line 9
    goto/16 :goto_7

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 16
    goto/16 :goto_7

    .line 18
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateRectToHome()V

    .line 22
    goto/16 :goto_7

    .line 25
    :pswitch_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 27
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mBackToHome:Z

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 31
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 33
    xor-int/2addr p1, v2

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->updateVisibility(Z)V

    .line 36
    goto/16 :goto_7

    .line 39
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 41
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mNeedAnimate:Z

    .line 43
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mDisableIconAnim:Z

    .line 45
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mBackToHome:Z

    .line 47
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 49
    if-eqz v5, :cond_0

    .line 51
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContentFolme:Lmiuix/animation/IFolme;

    .line 53
    if-eqz v5, :cond_0

    .line 55
    move v5, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    move v5, v0

    .line 59
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMiuiOptimization:Z

    .line 60
    if-eqz v6, :cond_c

    .line 62
    if-nez v5, :cond_1

    .line 64
    goto/16 :goto_6

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mCurrentNotifBean:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;

    .line 68
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsHeadsUpShowing:Z

    .line 70
    if-nez v6, :cond_3

    .line 72
    if-eqz v5, :cond_3

    .line 74
    iget-boolean v6, v5, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->headsUp:Z

    .line 76
    if-nez v6, :cond_3

    .line 78
    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$FocusedNotifBean;->packageName:Ljava/lang/String;

    .line 80
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 82
    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 84
    move-result v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 90
    if-eqz v5, :cond_3

    .line 92
    :cond_2
    move v5, v2

    .line 94
    goto :goto_1

    .line 95
    :cond_3
    move v5, v0

    .line 96
    :goto_1
    const-string/jumbo v6, "updateVisibility: shouldShow="

    .line 97
    const-string v7, ", mShouldShow="

    .line 100
    invoke-static {v6, v5, v7}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    move-result-object v6

    .line 105
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 106
    const-string v8, ", needAnimate="

    .line 108
    const-string v9, ", mRequestHide="

    .line 110
    invoke-static {v6, v7, v8, p1, v9}, Lcom/android/keyguard/KeyguardFaceListenModel$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 112
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mRequestHide:Z

    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    const-string v7, ", mTopActivityPackageName="

    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mTopActivityPackageName:Ljava/lang/String;

    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v7, ", disableIconAnim="

    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    const-string v7, ", backToHome="

    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v6

    .line 149
    const-string v7, "FocusedNotifPromptContr"

    .line 150
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 155
    if-ne v5, v6, :cond_4

    .line 157
    if-nez p1, :cond_4

    .line 159
    if-nez v4, :cond_4

    .line 161
    goto/16 :goto_7

    .line 163
    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 165
    if-eqz p1, :cond_a

    .line 167
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 169
    const-string/jumbo v4, "tag_focused_content"

    .line 171
    if-eqz p1, :cond_8

    .line 174
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsAnimating:Z

    .line 176
    if-eqz v3, :cond_7

    .line 178
    invoke-static {v1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 180
    move-result p1

    .line 183
    if-eqz p1, :cond_5

    .line 184
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIcon:Landroid/widget/ImageView;

    .line 186
    goto :goto_2

    .line 188
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContent:Landroid/widget/FrameLayout;

    .line 189
    :goto_2
    if-eqz p1, :cond_6

    .line 191
    const/4 v1, 0x4

    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mMainHandler:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;

    .line 197
    const/16 v1, 0x3e9

    .line 199
    const-wide/16 v5, 0x320

    .line 201
    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    goto :goto_3

    .line 206
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 207
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->animateShow(Lmiuix/animation/IFolme;Ljava/lang/String;Z)V

    .line 209
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContentFolme:Lmiuix/animation/IFolme;

    .line 212
    invoke-virtual {p0, p1, v4, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->animateShow(Lmiuix/animation/IFolme;Ljava/lang/String;Z)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setIsFocusedNotifPromptShowing(Z)V

    .line 217
    goto :goto_5

    .line 220
    :cond_8
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIsAnimating:Z

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setIsFocusedNotifPromptShowing(Z)V

    .line 223
    if-eqz v3, :cond_9

    .line 226
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIcon:Landroid/widget/ImageView;

    .line 228
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->hideImmediately(Landroid/view/View;)V

    .line 230
    goto :goto_4

    .line 233
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIconFolme:Lmiuix/animation/IFolme;

    .line 234
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->animateHide(Lmiuix/animation/IFolme;Ljava/lang/String;Z)V

    .line 236
    :goto_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContentFolme:Lmiuix/animation/IFolme;

    .line 239
    invoke-virtual {p0, p1, v4, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->animateHide(Lmiuix/animation/IFolme;Ljava/lang/String;Z)V

    .line 241
    goto :goto_5

    .line 244
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mShouldShow:Z

    .line 245
    if-eqz p1, :cond_b

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->cancelFolme()V

    .line 249
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mIcon:Landroid/widget/ImageView;

    .line 252
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->showImmediately(Landroid/view/View;)V

    .line 254
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mContent:Landroid/widget/FrameLayout;

    .line 257
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->showImmediately(Landroid/view/View;)V

    .line 259
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->setIsFocusedNotifPromptShowing(Z)V

    .line 262
    goto :goto_5

    .line 265
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->hideImmediately()V

    .line 266
    :goto_5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mDisableIconAnim:Z

    .line 269
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->mBackToHome:Z

    .line 271
    goto :goto_7

    .line 273
    :cond_c
    :goto_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->hideImmediately()V

    .line 274
    goto :goto_7

    .line 277
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 278
    invoke-virtual {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->onAnimCompleted(Ljava/lang/String;ZZ)V

    .line 280
    goto :goto_7

    .line 283
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController$2;->this$0:Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;

    .line 284
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/systemui/statusbar/phone/FocusedNotifPromptController;->onAnimCompleted(Ljava/lang/String;ZZ)V

    .line 286
    :goto_7
    return-void

    .line 289
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 290
.end method
