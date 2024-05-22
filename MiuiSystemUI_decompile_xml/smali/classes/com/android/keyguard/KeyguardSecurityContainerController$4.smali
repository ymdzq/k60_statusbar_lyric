.class public final Lcom/android/keyguard/KeyguardSecurityContainerController$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 4
    if-eqz p1, :cond_1

    .line 6
    if-nez p1, :cond_0

    .line 8
    goto/16 :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 15
    const v0, 0x7f0709d6    # @dimen/miui_unlock_lockout_page_padding '20.0dp'

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 19
    move-result p1

    .line 22
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 23
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p1, v1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 26
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mPhoneLockedTextView:Landroid/widget/TextView;

    .line 29
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object p1

    .line 34
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 40
    const v2, 0x7f0709d9    # @dimen/miui_unlock_lockout_title_margin_top '261.7dp'

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result v0

    .line 47
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 48
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mPhoneLockedTextView:Landroid/widget/TextView;

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mPhoneLockedTextView:Landroid/widget/TextView;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 57
    move-result-object v0

    .line 60
    const v2, 0x7f0709da    # @dimen/miui_unlock_lockout_title_text_size '23.3sp'

    .line 61
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 64
    move-result v0

    .line 67
    int-to-float v0, v0

    .line 68
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 69
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockoutView:Landroid/view/View;

    .line 72
    const v0, 0x7f0a0700    # @id/phone_locked_timeout_id

    .line 74
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v2

    .line 92
    const v3, 0x7f0709c4    # @dimen/miui_unlock_lockout_content_margin_top '3.0dp'

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 96
    move-result v2

    .line 99
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 100
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 105
    move-result-object v0

    .line 108
    const v2, 0x7f0709c5    # @dimen/miui_unlock_lockout_content_text_size '16.0sp'

    .line 109
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 112
    move-result v0

    .line 115
    int-to-float v0, v0

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reLayoutEmCallButton()V

    .line 120
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object v0

    .line 128
    const v2, 0x7f0709c3    # @dimen/miui_unlock_lockout_button_text_size '13.3sp'

    .line 129
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 132
    move-result v0

    .line 135
    int-to-float v0, v0

    .line 136
    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 140
    move-result-object p1

    .line 143
    const v0, 0x7f0709c2    # @dimen/miui_unlock_lockout_button_padding '10.0dp'

    .line 144
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 147
    move-result p1

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mEmergencyCallButton:Lcom/android/keyguard/EmergencyButton;

    .line 151
    invoke-virtual {v0, v1, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 156
    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 158
    move-result-object v0

    .line 161
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 164
    move-result-object v3

    .line 167
    const v4, 0x7f0709c6    # @dimen/miui_unlock_lockout_emergency_btn_margin_bottom '45.0dp'

    .line 168
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 171
    move-result v3

    .line 174
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 175
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 177
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 184
    move-result-object v3

    .line 187
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 188
    move-result v3

    .line 191
    int-to-float v3, v3

    .line 192
    invoke-virtual {v0, v1, v3}, Landroid/widget/Button;->setTextSize(IF)V

    .line 193
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordButton:Landroid/widget/Button;

    .line 196
    invoke-virtual {v0, v1, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 198
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodTitle:Landroid/widget/TextView;

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 203
    move-result-object v0

    .line 206
    const v3, 0x7f0709cf    # @dimen/miui_unlock_lockout_forgot_password_title_text_size '20.0sp'

    .line 207
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 210
    move-result v0

    .line 213
    int-to-float v0, v0

    .line 214
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 215
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordContent:Landroid/widget/TextView;

    .line 218
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 220
    move-result-object p1

    .line 223
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 226
    move-result-object v0

    .line 229
    const v4, 0x7f0709c9    # @dimen/miui_unlock_lockout_forgot_password_content_margin_top '41.7dp'

    .line 230
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 233
    move-result v0

    .line 236
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 239
    move-result-object v0

    .line 242
    const v4, 0x7f0709d8    # @dimen/miui_unlock_lockout_text_margin '55.0dp'

    .line 243
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 246
    move-result v0

    .line 249
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 253
    move-result-object v0

    .line 256
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 257
    move-result v0

    .line 260
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordContent:Landroid/widget/TextView;

    .line 264
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordContent:Landroid/widget/TextView;

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 271
    move-result-object v0

    .line 274
    const v5, 0x7f0709ca    # @dimen/miui_unlock_lockout_forgot_password_content_text_size '14.0sp'

    .line 275
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 278
    move-result v0

    .line 281
    int-to-float v0, v0

    .line 282
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 283
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodBtnLayout:Landroid/view/View;

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 288
    move-result-object p1

    .line 291
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 292
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 294
    move-result-object v0

    .line 297
    const v6, 0x7f0709cb    # @dimen/miui_unlock_lockout_forgot_password_method_margin_top '55.3dp'

    .line 298
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 301
    move-result v0

    .line 304
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 307
    move-result-object v0

    .line 310
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 311
    move-result v0

    .line 314
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 318
    move-result-object v0

    .line 321
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 322
    move-result v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 326
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodBtnLayout:Landroid/view/View;

    .line 329
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodBack:Landroid/widget/TextView;

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 336
    move-result-object v0

    .line 339
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 340
    move-result v0

    .line 343
    int-to-float v0, v0

    .line 344
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 345
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordMethodNext:Landroid/widget/TextView;

    .line 348
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 350
    move-result-object v0

    .line 353
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 354
    move-result v0

    .line 357
    int-to-float v0, v0

    .line 358
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 359
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTitle:Landroid/widget/TextView;

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 364
    move-result-object v0

    .line 367
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 368
    move-result v0

    .line 371
    int-to-float v0, v0

    .line 372
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 373
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOne:Landroid/widget/TextView;

    .line 376
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 378
    move-result-object p1

    .line 381
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 384
    move-result-object v0

    .line 387
    const v2, 0x7f0709cd    # @dimen/miui_unlock_lockout_forgot_password_suggesstion_margin_top '41.7dp'

    .line 388
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 391
    move-result v0

    .line 394
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 395
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 397
    move-result-object v0

    .line 400
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 401
    move-result v0

    .line 404
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 405
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 408
    move-result-object v0

    .line 411
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 412
    move-result v0

    .line 415
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 416
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOne:Landroid/widget/TextView;

    .line 419
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 421
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOne:Landroid/widget/TextView;

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 426
    move-result-object v0

    .line 429
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 430
    move-result v0

    .line 433
    int-to-float v0, v0

    .line 434
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 435
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 438
    move-result-object p1

    .line 441
    const v0, 0x7f0812ee    # @drawable/miui_keyguard_forget_password_suggesstions_one 'res/drawable-xhdpi/miui_keyguard_forget_password_suggesstions_one.webp'

    .line 442
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 445
    move-result-object p1

    .line 448
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 449
    move-result v0

    .line 452
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 453
    move-result v2

    .line 456
    invoke-virtual {p1, v1, v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 457
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOne:Landroid/widget/TextView;

    .line 460
    const/4 v2, 0x0

    .line 462
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 463
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOne:Landroid/widget/TextView;

    .line 466
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 468
    move-result-object v0

    .line 471
    const v3, 0x7f0709cc    # @dimen/miui_unlock_lockout_forgot_password_suggesstion_drawable_padding '12.0dp'

    .line 472
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 475
    move-result v0

    .line 478
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 479
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTwo:Landroid/widget/TextView;

    .line 482
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 484
    move-result-object p1

    .line 487
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 490
    move-result-object v0

    .line 493
    const v6, 0x7f0709ce    # @dimen/miui_unlock_lockout_forgot_password_suggesstion_two_margin_top '16.0dp'

    .line 494
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 497
    move-result v0

    .line 500
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 501
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 503
    move-result-object v0

    .line 506
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 507
    move-result v0

    .line 510
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 511
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 514
    move-result-object v0

    .line 517
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 518
    move-result v0

    .line 521
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 522
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTwo:Landroid/widget/TextView;

    .line 525
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 527
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTwo:Landroid/widget/TextView;

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 532
    move-result-object v0

    .line 535
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 536
    move-result v0

    .line 539
    int-to-float v0, v0

    .line 540
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 541
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 544
    move-result-object p1

    .line 547
    const v0, 0x7f0812ef    # @drawable/miui_keyguard_forget_password_suggesstions_two 'res/drawable-xhdpi/miui_keyguard_forget_password_suggesstions_two.webp'

    .line 548
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 551
    move-result-object p1

    .line 554
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 555
    move-result v0

    .line 558
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 559
    move-result v6

    .line 562
    invoke-virtual {p1, v1, v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 563
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTwo:Landroid/widget/TextView;

    .line 566
    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 568
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionTwo:Landroid/widget/TextView;

    .line 571
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 573
    move-result-object v0

    .line 576
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 577
    move-result v0

    .line 580
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 581
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOk:Landroid/widget/TextView;

    .line 584
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 586
    move-result-object p1

    .line 589
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 592
    move-result-object v0

    .line 595
    const v2, 0x7f0709d5    # @dimen/miui_unlock_lockout_ok_btn_margin_bottom '55.0dp'

    .line 596
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 599
    move-result v0

    .line 602
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 603
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 605
    move-result-object v0

    .line 608
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 609
    move-result v0

    .line 612
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 613
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 616
    move-result-object v0

    .line 619
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 620
    move-result v0

    .line 623
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 624
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOk:Landroid/widget/TextView;

    .line 627
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mForgetPasswordSuggestionOk:Landroid/widget/TextView;

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    .line 634
    move-result-object p0

    .line 637
    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 638
    move-result p0

    .line 641
    int-to-float p0, p0

    .line 642
    invoke-virtual {p1, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 643
    :cond_1
    :goto_0
    return-void
    .line 646
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda9;

    .line 7
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda9;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;I)V

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reinflateViewFlipper(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    .line 13
    return-void
    .line 16
.end method

.method public final onLayoutDirectionChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reloadForLayoutDirection(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final onLocaleListChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reloadText()V

    .line 4
    return-void
    .line 7
.end method

.method public final onThemeChanged()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$4;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reset()V

    .line 4
    return-void
    .line 7
.end method

.method public final onUiModeChanged()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
